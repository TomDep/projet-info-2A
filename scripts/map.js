// Coordinates
let leMans = [0.202045, 48.008472];

// ..

// Create the marker layer once all markers had been added
var markerLayer = new ol.layer.Vector({
    source: new ol.source.Vector({
        features: markerFeatures
    })
});

// ========== Map Initilization ==========
var map = new ol.Map({
    view: new ol.View({
        center: ol.proj.fromLonLat(leMans),
        zoom: 13
    }),
    layers: [
        new ol.layer.Tile({
            source: new ol.source.OSM()
        })
    ],
    target: 'map'
});

map.addLayer(markerLayer);

// ========== Popup Element for Markers ==========
var popupElement = document.getElementById('popup');

var popup = new ol.Overlay({
    element: popupElement,
    positioning: 'bottom-center',
    className: 'map-popup',
    stopEvent: false,
    offset: [0, -50]
});
map.addOverlay(popup);

// ========== Map Events ==========
map.on('pointermove', function(evt) {
    if (evt.dragging) {
        $(popupElement).popover('destroy');
        return;
    }
    var pixel = map.getEventPixel(evt.originalEvent);
    var hit = map.hasFeatureAtPixel(pixel);
    map.getTargetElement().style.cursor = hit ? 'pointer' : '';

    // Check if you click on a feature
    var feature = map.forEachFeatureAtPixel(evt.pixel,
        function (feature) {
            return feature;
        });
    
    if (feature) {
        // Place the popup at the coordinates
        var coordinates = feature.getGeometry().getCoordinates();
        popup.setPosition(coordinates);
        $(popupElement).popover({
            placement: 'top',
            html: true,
            content: feature.get('name')
        });
        
        $(popupElement).popover('show');        
    } else {
        $(popupElement).popover('destroy');
    }
});

map.on('click', function (evt) {
    
    // Check if you click on a feature
    var feature = map.forEachFeatureAtPixel(evt.pixel,
        function (feature) {
            return feature;
        });
    
    if (feature) {
        window.location.replace("?site-id=" + feature.get('dataid'));
    }
});