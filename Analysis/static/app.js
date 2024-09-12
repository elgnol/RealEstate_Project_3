// Initialize the map
var map = L.map('map').setView([37.8, -96], 4); // Centered on the US

// Add a tile layer
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 15,
}).addTo(map);

// Variables to hold markers
var rentalMarkers = [];
var homeMarkers = [];
var percentMarkers = [];

// Function to create markers
function createMarkers(data, markersArray, color, scalingFactor) {
    data.forEach(function(item) {
        // Calculate marker size based on price and scaling factor
        var markerSize = item.price / scalingFactor; // Adjust this factor as needed

        // Create a circle marker
        var marker = L.circleMarker([item.lat, item.lng], {
            radius: markerSize,
            color: color,
            fillColor: color,
            fillOpacity: 0.5
        });

        // Add a popup with additional information
        marker.bindPopup(`Price: $${item.price}`);
        
        // Add marker to the map and store it in the array
        marker.addTo(map);
        markersArray.push(marker);
    });
}

// Load rental prices data
fetch('https://raw.githubusercontent.com/elgnol/RealEstate_Project_3/tatyana/Analysis/rental_heat_df.json')
    .then(response => response.json())
    .then(data => {
        createMarkers(data, rentalMarkers, 'blue', 200); // Create rental markers with a specific scaling factor
    });

// Load home values data
fetch('https://raw.githubusercontent.com/elgnol/RealEstate_Project_3/tatyana/Analysis/home_heat_df.json')
    .then(response => response.json())
    .then(data => {
        createMarkers(data, homeMarkers, 'green', 36000); // Create home value markers with a different scaling factor
    });


// Load home percents data
fetch('https://raw.githubusercontent.com/elgnol/RealEstate_Project_3/tatyana/Analysis/home_percents.json')
    .then(response => response.json())
    .then(data => {
        createMarkers(data, percentMarkers, 'pink', 2); // Create home percent markers with a different scaling factor
    });

// Load rental percents data
fetch('https://raw.githubusercontent.com/elgnol/RealEstate_Project_3/tatyana/Analysis/rental_percents.json')
.then(response => response.json())
.then(data => {
    createMarkers(data, percentMarkers, 'orange', 2); // Create rental percent markers with a different scaling factor
});

// Function to toggle maps
function toggleMap() {
    var selectedValue = document.getElementById('mapSelector').value;

    // Clear all markers from the map
    rentalMarkers.forEach(marker => map.removeLayer(marker));
    homeMarkers.forEach(marker => map.removeLayer(marker));
    percentMarkers.forEach(marker => map.removeLayer(marker));

    // Add markers based on selection
    if (selectedValue === 'rental') {
        rentalMarkers.forEach(marker => marker.addTo(map));
    } else if (selectedValue === 'home') {
        homeMarkers.forEach(marker => marker.addTo(map));
    } else if (selectedValue === 'home percent') {
        homeMarkers.forEach(marker => marker.addTo(map));
    } else if (selectedValue === 'rental percent') {
        homeMarkers.forEach(marker => marker.addTo(map));
    }
}

// Event listener for dropdown change
document.getElementById('mapSelector').addEventListener('change', toggleMap);

// Initial load: show rental prices by default
toggleMap();

