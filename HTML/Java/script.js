let lat = 45.75135;
let lon = 4.79143;

let map = L.map("map", {
    zoom: 13,
    center: [lat, lon]
});

L.tileLayer("https://{s}.tile.openstreetmap.fr/osmfr/{z}/{x}/{y}.png", {
    minZoom: 1,
    maxZoom: 20,
    attribution: 'données © <a href="//osm.org/copyright">OpenStreetMap</a>/ODbL - rendu <a href="//openstreetmap.fr">OSM France</a>'
}).addTo(map);