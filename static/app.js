// Initialize the map
var map = L.map('map').setView([37.8, -96], 4); // Centered on the US

// Add a tile layer
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 15,
}).addTo(map);

// Variables to hold markers
var rentalMarkers = [];
var homeMarkers = [];
var homePercentMarkers = [];
var rentalPercentMarkers = [];

// Function to create markers
function createMarkers(data, markersArray, color, scalingFactor, isPercentage = false) {
    data.forEach(function(item) {

        // Ensure that price, lat, and lng are valid numbers
        const price = parseFloat(item.price);
        const lat = parseFloat(item.lat);
        const lng = parseFloat(item.lng);
        const regionName = item.RegionName;
        
        // Check if lat, lng, and price are valid numbers
        if (isNaN(price) || isNaN(lat) || isNaN(lng)) {
            console.error("Invalid data:", item); // Log invalid entries
            return; // Skip invalid entries
        }
        
        // Calculate marker size based on price and scaling factor
        var markerSize = price / scalingFactor;
        if (markerSize <= 0) {
            markerSize = 1; // Prevent markers with size <= 0
        }
        
        // Create a circle marker
        var marker = L.circleMarker([lat, lng], {
            radius: markerSize,
            color: color,
            fillColor: color,
            fillOpacity: 0.5
        });

        // If it's a percentage map, display the price as a percentage
        var popupContent;
        if (isPercentage) {
            popupContent = `Region: ${regionName}<br>Percentage: ${price.toFixed(2)}%`;
        } else {
            popupContent = `Region: ${regionName}<br>Price: $${price.toFixed(2)}`;
        }

        // Add a popup with RegionName and price or percentage
        marker.bindPopup(popupContent);
        
        // Store the marker in the array (but do not add to the map yet)
        markersArray.push(marker);
    });
}

// Load rental prices data
fetch('https://raw.githubusercontent.com/elgnol/RealEstate_Project_3/tatyana/Analysis/rental_heat_df.json')
    .then(response => response.json())
    .then(data => {
        createMarkers(data, rentalMarkers, 'blue', 200); // No 'isPercentage' argument, default is false
    
        // Call toggleMap to show default map (rental)
        toggleMap(); // Call this only after rental markers are loaded
    });

// Load home values data
fetch('https://raw.githubusercontent.com/elgnol/RealEstate_Project_3/tatyana/Analysis/home_heat_df.json')
    .then(response => response.json())
    .then(data => {
        createMarkers(data, homeMarkers, 'green', 36000); // No 'isPercentage' argument, default is false
    });


// Load home percents data
fetch('https://raw.githubusercontent.com/elgnol/RealEstate_Project_3/tatyana/Analysis/home_percents.json')
    .then(response => response.json())
    .then(data => {
        createMarkers(data, homePercentMarkers, 'red', 7, true); // 'true' indicates it's a percentage map
    });

// Load rental percents data
fetch('https://raw.githubusercontent.com/elgnol/RealEstate_Project_3/tatyana/Analysis/rental_percents.json')
    .then(response => response.json())
    .then(data => {
        createMarkers(data, rentalPercentMarkers, 'orange', 7, true); // 'true' indicates it's a percentage map
    });

// Function to toggle maps
function toggleMap() {
    var selectedValue = document.getElementById('mapSelector').value || 'rental'; // Default to 'rental'

    // Clear all markers from the map
    rentalMarkers.forEach(marker => map.removeLayer(marker));
    homeMarkers.forEach(marker => map.removeLayer(marker));
    homePercentMarkers.forEach(marker => map.removeLayer(marker));
    rentalPercentMarkers.forEach(marker => map.removeLayer(marker));

    // Add markers based on selection
    if (selectedValue === 'rental') {
        rentalMarkers.forEach(marker => marker.addTo(map));
    } else if (selectedValue === 'home') {
        homeMarkers.forEach(marker => marker.addTo(map));
    } else if (selectedValue === 'home percents') {
        homePercentMarkers.forEach(marker => marker.addTo(map)); 
    } else if (selectedValue === 'rental percents') {
        rentalPercentMarkers.forEach(marker => marker.addTo(map)); 
    }
}

// Event listener for dropdown change
document.getElementById('mapSelector').addEventListener('change', toggleMap);

// Initial load: show rental prices by default (now called after data is loaded)






