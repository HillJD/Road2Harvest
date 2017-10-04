<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="audio1.aspx.cs" Inherits="upc_website.audio1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div id="audio_player">
	<div id="audio_controls">
		<button id="playpausebtn"></button>
		<input id="seekslider" type="range" min="0" max="100" value="0" step="1">
		<div id="timebox">
			<span id="curtimetext">00:00</span> / <span id="durtimetext">00:00</span>
		</div>
		<button id="mutebtn"></button>
		<input id="volumeslider" type="range" min="0" max="100" value="50" step="1">
		<br><br>
	</div> <!--end audio_controls-->
	<select id="mylist" size="4">
			<option value ="Sermon1">Sermon 1</option>
			<option value ="Sermon2">Sermon 2</option>
			<option value ="Sermon3">Sermon 3</option>
			<option value ="Sermon4">Sermon 4</option>
		</select>
</div> <!--end audio_player-->
    <script>
        var audio, playbtn, mutebtn, seek_bar, volumeslider, seeking, seekto, durtimetext, curtimetext;
        var ext = ".mp3";
        /*for firefox or opera that may not support mp3*/
        /*var agent = navigator.appName.toLowerCase();*/
        /*if(agent.indexOf('firefox')  != -1  || agent.indexOf('opera') != -1) {
         ext = ".ogg";
      }*/


        function initAudioPlayer() {
            audio = new Audio();
            audio.src = "audio/no more night" + ext;
            /*alert(agent);*/
            audio.loop = true;
            audio.play();

            //Set object references
            playbtn = document.getElementById("playpausebtn");
            mutebtn = document.getElementById("mutebtn");
            seekslider = document.getElementById("seekslider");
            volumeslider = document.getElementById("volumeslider");
            durtimetext = document.getElementById("durtimetext");
            curtimetext = document.getElementById("curtimetext");

            //Add event handling
            playbtn.addEventListener("click", playPause);
            mutebtn.addEventListener("click", mute);
            seekslider.addEventListener("mousedown", function (event) { seeking = true; seek(event); });
            seekslider.addEventListener("mousemove", function (event) { seek(event); });
            seekslider.addEventListener("mouseup", function () { seeking = false; })
            volumeslider.addEventListener("mousemove", setvolume);
            audio.addEventListener("timeupdate", function () { seektimeupdate(); });

            //Functions
            function playPause() {
                if (audio.paused) {
                    audio.play();
                    playbtn.style.background = "url(images/pause_24px_gray.png) no-repeat";
                } else {
                    audio.pause();
                    playbtn.style.background = "url(images/play_24px_gray.png) no-repeat";
                }
            }

            function mute() {
                if (audio.muted) {
                    audio.muted = false;
                    mutebtn.style.background = "url(images/speaker_muted_24px_gray.png) no-repeat"
                } else {
                    audio.muted = true;
                    mutebtn.style.background = "url(images/speaker_24px_gray.png) no-repeat"
                }
            }

            function seek() {
                if (seeking) {
                    seekslider.value = event.clientX - (seekslider.offsetLeft + 195);/*150px + 45px*/
                    seekto = audio.duration * (seekslider.value / 100);
                    audio.currentTime = seekto;

                }

            }

            function setvolume() {
                audio.volume = volumeslider.value / 100;
            }

            function seektimeupdate() {
                var nt = audio.currentTime * (100 / audio.duration);
                seekslider.value = nt;
                var curmins = Math.floor(audio.currentTime / 60);
                var cursecs = Math.floor(audio.currentTime - curmins * 60);
                var durmins = Math.floor(audio.duration / 60);
                var dursecs = Math.floor(audio.duration - durmins * 60);
                if (cursecs < 10) { cursecs = "0" + cursecs }
                if (dursecs < 10) { dursecs = "0" + dursecs }
                if (curmins < 10) { curmins = "0" + curmins }
                if (durmins < 10) { durmins = "0" + durmins }
                curtimetext.innerHTML = curmins + ":" + cursecs;
                durtimetext.innerHTML = durmins + ":" + dursecs;
            }

        }

        window.addEventListener("load", initAudioPlayer);

    </script>
</asp:Content>
