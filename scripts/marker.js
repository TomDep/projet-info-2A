// ========== Markers & Features ==========
var markerFeatures = [];

function addMarker(coordinate, name, id, color) {
    let iconFeature = new ol.Feature({
        geometry: new ol.geom.Point(ol.proj.fromLonLat(coordinate)),
        name: name,
        dataid: id
    });

    let iconStyle = new ol.style.Style({
        image: new ol.style.Icon({
            anchor: [0.5, 474],
            anchorXUnits: 'fraction',
            anchorYUnits: 'pixels',
            src: 'images/marker.png',
            scale: 0.07,
            color: color
        })
    });

    iconFeature.setStyle(iconStyle);

    markerFeatures.push(iconFeature);
}