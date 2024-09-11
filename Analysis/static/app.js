// URLs for the JSON datasets
const housingUrl = 'https://raw.githubusercontent.com/elgnol/RealEstate_Project_3/tatyana/Analysis/filtered_home_df.json';
const rentalUrl = 'https://raw.githubusercontent.com/elgnol/RealEstate_Project_3/tatyana/Analysis/rental_df.json';

let housingData = [];
let rentalData = [];
let cities = [];
let housingPercentChangeElement;
let rentalPercentChangeElement;

// Load both datasets and initialize the page
async function loadData() {
    const housingResponse = await fetch(housingUrl);
    const rentalResponse = await fetch(rentalUrl);

    housingData = await housingResponse.json();
    rentalData = await rentalResponse.json();

    // Assuming both datasets are aligned and have the same structure
    cities = housingData.map(row => row.RegionName);

    // Populate the dropdown with city names
    const citySelect = document.getElementById('citySelect');
    cities.forEach((city, index) => {
        const option = document.createElement('option');
        option.value = index;
        option.text = city;
        citySelect.appendChild(option);
    });

    // Create elements to display percent change
    housingPercentChangeElement = document.getElementById('housingPercentChange');
    rentalPercentChangeElement = document.getElementById('rentalPercentChange');
    
    // Default city (first city in the list)
    updateGraphs(0);

    // Add event listener for when the user selects a different city
    citySelect.addEventListener('change', function() {
        updateGraphs(this.value);
    });
}

// Function to update graphs based on selected city
function updateGraphs(cityIndex) {
    const selectedHousingRow = housingData[cityIndex];
    const selectedRentalRow = rentalData[cityIndex];

    const housingLabels = Object.keys(selectedHousingRow).filter(key => key.match(/^\d{4}-\d{2}-\d{2}$/));
    const housingPrices = housingLabels.map(date => parseFloat(selectedHousingRow[date]));

    const rentalLabels = Object.keys(selectedRentalRow).filter(key => key.match(/^\d{4}-\d{2}-\d{2}$/));
    const rentalPrices = rentalLabels.map(date => parseFloat(selectedRentalRow[date]));

    // Access the percent change from the last column of each dataset
    const housingPercentChange = selectedHousingRow[Object.keys(selectedHousingRow).pop()]; // Last column
    const rentalPercentChange = selectedRentalRow[Object.keys(selectedRentalRow).pop()]; // Last column

    // Update the percent change display
    housingPercentChangeElement.innerText = `Housing Price Change: ${housingPercentChange}%`;
    rentalPercentChangeElement.innerText = `Rental Price Change: ${rentalPercentChange}%`;
    
    // Update the housing chart
    createLineChart('housingChart', housingLabels, housingPrices, 'Housing Prices');

    // Update the rental chart
    createLineChart('rentalChart', rentalLabels, rentalPrices, 'Rental Prices');
}

// Function to create/update a line chart
function createLineChart(canvasId, labels, data, label) {
    const ctx = document.getElementById(canvasId).getContext('2d');
    
    // If a chart already exists, destroy it before creating a new one
    if (window[canvasId]) {
        window[canvasId].destroy();
    }

    // Create a new chart
    window[canvasId] = new Chart(ctx, {
        type: 'line',
        data: {
            labels: labels,
            datasets: [{
                label: label,
                data: data,
                fill: false,
                borderColor: 'rgba(75, 192, 192, 1)',
                tension: 0.1
            }]
        },
        options: {
            responsive: true,
            scales: {
                x: {
                    title: {
                        display: true,
                        text: 'Date'
                    }
                },
                y: {
                    title: {
                        display: true,
                        text: 'Price ($)'
                    },
                    beginAtZero: false
                }
            }
        }
    });
}

// Load data when the page loads
loadData();

