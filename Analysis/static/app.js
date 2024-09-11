// Initialize the map
var map = L.map('map').setView([37.8, -96], 4); // Centered on the US

// Add a tile layer
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 18,
}).addTo(map);

// Function to create heat map
function createHeatMap(data) {
    var heatData = [];

    // Parse the data to create heat map points
    data.forEach(function(item) {
        heatData.push([item.latitude, item.longitude, item.price]); // Adjust the keys based on your JSON structure
    });

    // Create the heat map layer
    var heat = L.heatLayer(heatData, {radius: 25}).addTo(map);
}

// Load rental prices data
fetch('https://raw.githubusercontent.com/elgnol/RealEstate_Project_3/tatyana/Analysis/rental_heat_df.json')
    .then(response => response.json())
    .then(data => {
        createHeatMap(data);
    });

// Load home values data (optional, you can create another heat map for home values)
fetch('https://raw.githubusercontent.com/elgnol/RealEstate_Project_3/tatyana/Analysis/home_heat_df.json')
    .then(response => response.json())
    .then(data => {
        createHeatMap(data);
    });

