<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="location.aspx.cs" Inherits="upc_website.location2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <span class="glyphicons glyphicons-map-marker mypage-glythicons"></span>
    </div>
    <div class="mypage-header text-center">
        <h4><b>Location</b></h4>
    </div>

    <div class="text-center">

        <h4>Union Pentecostal Church</h4>
        <h5>1101 North Union Road</h5>
        <h5>Dayton, Oh 45417</h5>
        <h5>(937) 555 - 5555</h5>
    </div>

    <div id="map">
    </div>
    <script>
        function initMap() {
            var location = { lat: 39.762689, lng: -84.311870 };
            var map = new google.maps.Map(document.getElementById("map"), {
                zoom: 13,
                center: location
            });
            var marker = new google.maps.Marker({

                position: location,
                map: map
            });
        }
    </script>

    <div>
        <img id="church_pic" src="images/churchbuilding.jpg" /> 

    </div>

    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDmYOh5mPKQ2PIGPHjUdhlb9Ibz0CbCfQI&&callback=initMap"></script>
</asp:Content>
