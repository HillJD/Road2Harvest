<%@ Page Title="Weather" Language="C#" MasterPageFile="~/weather.Master" AutoEventWireup="true" CodeBehind="weather.aspx.cs" Inherits="upc_website.weather" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Weather Example for piSignage</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="https://cdn.rawgit.com/maxdow/skycons/master/skycons.js"></script>
    <!-- <link href="https://fonts.googleapis.com/css?family=Lato:100,300" rel="stylesheet"/> -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300;400&display=swap" rel="stylesheet">
    <!-- <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;1,900&display=swap" rel="stylesheet"> -->
    <!-- <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet"> -->
    <!-- <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400&display=swap" rel="stylesheet"> -->
    <link href="Content/weather.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
    <div class="datetime-container">
        <div  id="firstrow"></div>
        <div  id="secondrow"></div>
    </div>
    <div class="temperature-container">
        <span id="place">Weather Yesterday</span>
        <div class="temperature">
            <canvas id="icon0" width="75" height="75"></canvas>
            <span id="temperature"></span>
            <!-- <div class="max-min-temperature">-->
                <!--<span id="max-temperature"></span>-->
                <!--<span id="min-temperature"></span>-->
            <!--</div> -->
        </div>
        <div class="description">
            <span id="summary"></span>
        </div>
    </div>

    <div id="forecast-container"></div>             <!--Forecast data is added here-->
</div>
<i id="message" class="citation"> </i>


<script>
    "use strict";
    const city = "Trotwood, Ohio";
    const units = "auto";
    const lang = "en";
    const forecastDays = 5;

    const temperature = document.getElementById("temperature");
    const icon0 = document.getElementById("icon0");
    const maxTemperature = document.getElementById("max-temperature");
    const minTemperature = document.getElementById("min-temperature");
    const summary = document.getElementById("summary");
    const place = document.getElementById("place");

    const forecastContainer = document.getElementById("forecast-container");
    const message = document.getElementById("message");

    const calendar = document.getElementById("firstrow");
    const clock = document.getElementById("secondrow");

    const skycons = new Skycons({ color: "#fff" });

    updateClock();
    getWeather();
    setInterval(getWeather, 600000);

    function updateClock(){
        clock.innerHTML = moment().format("hh:mm");
        calendar.innerHTML = moment().format("ddd DD MMM");
        setTimeout(updateClock,10000)
    }

    function getWeather() {
        fetch(
            `https://pisignage.com/api/getweather?place=${city}&units=${units}&lang=${lang}`,
            {
                method: "GET",
                headers: {
                    "Content-Type": " application/json"
                },
                mode: "cors"
            }
        )
            .then(res => res.json())
            .then(data => {

                if (!(data && data.success)) {
                    if (data.stat_message) message.textContent = data.stat_message;
                    return console.log("Could not get weather data, reason: " + data.stat_message);
                }

                message.textContent = "";
                const weatherData = data.data;
                //console.log(weatherData);

                if (weatherData.cityName.indexOf(",") > -1) {
                    weatherData.cityName = weatherData.cityName.slice(
                        0,
                        weatherData.cityName.indexOf(",")
                    );
                } else {
                    weatherData.cityName = weatherData.cityName;
                }

                if (place)
                    place.textContent = weatherData.cityName;

                if (temperature)
                    temperature.textContent = weatherData.currently.temperature.toFixed(0); //+ "°C";
                if (maxTemperature)
                    maxTemperature.textContent = weatherData.daily.data[0].temperatureMax.toFixed(0);
                if (minTemperature)
                    minTemperature.textContent = weatherData.daily.data[0].temperatureMin.toFixed(0);
                if (summary)
                    summary.textContent = weatherData.currently.summary;//.toUpperCase();
                if (icon0)
                    skycons.add(
                        icon0,
                        weatherData.currently.icon.toUpperCase().replace(/-/g, "_")
                    );
                let days = weatherData.daily.data;

                if (forecastContainer)
                    while (forecastContainer.firstChild) {
                        forecastContainer.removeChild(forecastContainer.firstChild);
                    }
                for (var i = 1; i <= forecastDays; i++) {
                    var coverDiv, dayDiv, tempDiv, canvasDiv, numDiv;

                    canvasDiv = document.createElement("canvas");
                    canvasDiv.width = 32;
                    canvasDiv.height = 32;
                    skycons.add(
                        canvasDiv,
                        days[i].icon.toUpperCase().replace(/-/g, "_")
                    );
                    canvasDiv.style.paddingRight = "5px"
                    numDiv = document.createElement("div");
                    numDiv.textContent = ((days[i].temperatureMax + days[i].temperatureMin) / 2).toFixed(0);

                    tempDiv = document.createElement("div");
                    tempDiv.setAttribute("class", "forecast-temp");
                    tempDiv.appendChild(canvasDiv);
                    tempDiv.appendChild(numDiv);

                    dayDiv = document.createElement("div");
                    dayDiv.textContent = convertToWeekday(days[i].time);
                    ;
                    coverDiv = document.createElement("div");
                    coverDiv.setAttribute("class", "day");
                    coverDiv.appendChild(dayDiv);
                    coverDiv.appendChild(tempDiv);

                    forecastContainer.appendChild(coverDiv);
                }

                skycons.play();
            }).catch(function(error) {
                message.textContent = error;
            });
    }

    function convertToWeekday(sec) {
        var toWeekday = new Date(sec * 1000);
        var days = [
            "Sun",
            "Mon",
            "Tue",
            "Wed",
            "Thu",
            "Fri",
            "Sat"
        ];
        var weekday = days[toWeekday.getDay()];
        return weekday;
    }
</script>
</asp:Content>
