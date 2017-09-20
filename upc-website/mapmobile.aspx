<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mapmobile.aspx.cs" Inherits="upc_website.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Directions</title>

    <style>
        /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
        html, body, #map-canvas, #directions-canvas {
            height: 100%;
        }

        .ui-content, #mapPage, #directionsPage {
            height: inherit;
        }
    </style>
</head>

<body>
   
    <div id="geoLocation">geoLocation</div>
    <div data-role="page" id="directionsPage"></div>
    <div id="directions-canvas">
        directions-canvas
    </div>
    <button onclick="getDirectionsLocation()"></button>

    <div id="map-canvas"></div>

   
    <script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
    <%--<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>--%>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDmYOh5mPKQ2PIGPHjUdhlb9Ibz0CbCfQI"></script>
    
    <script>
        //geolocationPage
        var x = document.getElementById("geoLocation");
        function getLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(showPosition);
            } else {
                x.innerHTML = "Geolocation is not supported by this browser.";
            }
        }
        function showPosition(position) {
            x.innerHTML = "Latitude: " + position.coords.latitude +
            "<br>Longitude: " + position.coords.longitude;
        }

        $(document).on('click', '#getGeolocation', function () {
            console.log("clicked");
            getLocation();
        });

        //map page
        var y = document.getElementById("map-canvas");
        var mapLatitude;
        var mapLongitude;
        var myLatlng;

        function getMapLocation() {
            console.log("getMapLocation");
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(showMapPosition);
            } else {
                console.log = ("Geolocation is not supported by this browser.");
            }
        }
        function showMapPosition(position) {
            console.log("showMapPosition");
            mapLatitude = position.coords.latitude;
            mapLongitude = position.coords.longitude;
            myLatlng = new google.maps.LatLng(mapLatitude, mapLongitude);
            getMap();
        }


        var map;
        function getMap() {
            console.log("getMap");
            var mapOptions = {
                zoom: 12,
                center: new google.maps.LatLng(mapLatitude, mapLongitude)
            };
            map = new google.maps.Map(document.getElementById('map-canvas'),
                mapOptions);

            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: "You are here!"
            });
        }

        $(document).on("pageshow", "#mapPage", function (event) {
            getMapLocation();
        });

        //directionsPage
        var directionsDisplay;
        var directionsService = new google.maps.DirectionsService();
        var directionsMap;
        var z = document.getElementById("directions-canvas");
        var start;
        var end;

        function getDirectionsLocation() {
            console.log("getDirectionsLocation");
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(showDirectionsPosition);
            } else {
                z.innerHTML = "Geolocation is not supported by this browser.";
            }
        }
        function showDirectionsPosition(position) {
            console.log("showDirectionsPosition");
            directionsLatitude = position.coords.latitude;
            directionsLongitude = position.coords.longitude;
            directionsLatLng = new google.maps.LatLng(directionsLatitude, directionsLongitude);
            getDirections();
        }

        function getDirections() {
            console.log('getDirections');
            directionsDisplay = new google.maps.DirectionsRenderer();
            //start = new google.maps.LatLng(directionsLatLng);
            var directionsOptions = {
                zoom: 12,
                center: start
            }
            directionsMap = new google.maps.Map(document.getElementById("directions-canvas"), directionsOptions);
            directionsDisplay.setMap(directionsMap);
            calcRoute();
        }

        function calcRoute() {
            console.log("calcRoute");
            start = directionsLatLng;
            end = "50 Rue Ste-Catherine O Montréal, QC H2X 1Z6";
            var request = {
                origin: start,
                destination: end,
                travelMode: google.maps.TravelMode.TRANSIT
            };
            directionsService.route(request, function (result, status) {
                if (status == google.maps.DirectionsStatus.OK) {
                    directionsDisplay.setDirections(result);
                }
            });
        }

        $(document).on("pageshow", "#directionsPage", function (event) {
            getDirectionsLocation();
        });
    </script>
    
</body>
</html>
