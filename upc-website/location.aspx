<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="location.aspx.cs" Inherits="upc_website.location" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
    <span class="glyphicons glyphicons-map-marker mypage-glythicons"></span>
</div>
<div class="mypage-header text-center">
        <h2>Location</h2>
</div>

<div class="text-center">
        
        <h2>Union Pentecostal Church</h2>
        <h3>1101 North Union Road</h3>
        <h3>Dayton, OH 45417</h3>
        <h3>(937) 555 - 5555</h3>       
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
            var marker=new google.maps.Marker({

                position:location,
                map:map
            });
        }
    </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDmYOh5mPKQ2PIGPHjUdhlb9Ibz0CbCfQI&&callback=initMap"></script>
   

</asp:Content>
