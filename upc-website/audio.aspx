<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="audio.aspx.cs" Inherits="upc_website.audio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
body{ background:#666; }

div#audio_player{ width:450px; height:60px; margin:100px auto 100px auto;background: url(images/audio-skin3.png) no-repeat; border-radius:4px;}
div#audio_controls{ margin-left:66px; }
div#audio_controls>button{
	border:none;
	cursor:pointer;
	outline:none;
	display:block;
	float:left;
	margin:22px 10px 0px 0px; }

div#audio_controls>input{outline:none;
	display:block;
	float:left;
	margin:24px 10px 0px 0px;
}

button#playpausebtn{
	background:url(images/pause_12px.png) no-repeat;
	width:12px;
	height:14px;
}
button#mutebtn{
	background:url(images/speaker_muted_12px.png) no-repeat;
	width:5px;
	height:14px;
}
#playlist_status {
	display: block;
	float: left;
	margin:30px auto 100px auto;
}
input#seekslider{
	width:100px;
}
input#volumeslider{
	width: 70px;
}
div#timebox{
	margin: 23px 10px 0px 0px;
	float: left;
	width:80px;
	background:#000;
	border-bottom: #444 1px solid;
	text-align:center;
	color: #09F; 
	font-family: Arial, Helvetica, sans-serif;
	font-size:11px;
}
input[type='range'] {
    -webkit-appearance: none !important;
	margin:0px;
	padding:0px;
    background: #000;
    height:13px;
	border-bottom:#333 1px solid;
}
input[type='range']::-ms-fill-lower  {
	background:#000;
}
input[type='range']::-ms-fill-upper  {
	background:#000;
}
input[type='range']::-moz-range-track {
	border:none;
    background: #000;
}
input[type='range']::-webkit-slider-thumb {
    -webkit-appearance: none !important;
    background: radial-gradient(#FFF, #333);
    height:11px;
    width:11px;
	border-radius:100%;
	cursor:pointer;
}
input[type='range']::-moz-range-thumb {
    background: radial-gradient(#FFF, #333);
    height:11px;
    width:11px;
	border-radius:100%;
	cursor:pointer;
}
input[type='range']::-ms-thumb {
    -webkit-appearance: none !important;
    background: radial-gradient(#FFF, #333);
    height:11px;
    width:11px;
	border-radius:100%;
	cursor:pointer;
}
</style>
<script>

function initAudioPlayer(){
	var audio, playbtn, mutebtn, seekslider, volumeslider,
	seeking = false, seekto, curtimetext, durtimetext,
	playlist_status,dir,playlist,playlist_index,ext,agent;

	dir = "audio/";
	playlist = ["No More Night","4905_20sec","4933_20sec"];
	playlist_index = 0;
	ext = ".mp3";
	agent = navigator.userAgent.toLowerCase();
    if(agent.indexOf('firefox') != -1 || agent.indexOf('opera') != -1) {
        ext = ".ogg";
    }
	
	// Set object references
	playbtn = document.getElementById("playpausebtn");
	mutebtn = document.getElementById("mutebtn");
	seekslider = document.getElementById("seekslider");
	volumeslider = document.getElementById("volumeslider");
	curtimetext = document.getElementById("curtimetext");
	durtimetext = document.getElementById("durtimetext");
	playlist_status = document.getElementById("playlist_status");

	//Audio oblect
	audio = new Audio();
	audio.src = dir + playlist[playlist_index] + ext;
	audio.loop = false;
	audio.play();
	playlist_status.innerHTML = "Track " + (playlist_index + 1) + " - " + playlist[playlist_index] + ext;
	
	// Add Event Handling
	playbtn.addEventListener("click",playPause);
	mutebtn.addEventListener("click", mute);
	seekslider.addEventListener("mousedown", function(event){ seeking=true; seek(event); });
	seekslider.addEventListener("mousemove", function(event){ seek(event); });
	seekslider.addEventListener("mouseup",function(){ seeking=false; });
	volumeslider.addEventListener("mousemove", setvolume);
	audio.addEventListener("timeupdate", function(){ seektimeupdate(); });
	audio.addEventListener("ended",function(){switchTrack(); });
	// Functions
	function switchTrack(){
		if(playlist_index == (playlist.length - 1)){
			playlist_index = 0;
		} else {
		    playlist_index++;	
		}
		playlist_status.innerHTML = "Track "+(playlist_index+1)+" - "+ playlist[playlist_index]+ext;
		audio.src = dir+playlist[playlist_index]+ext;
	    audio.play();
	}
	function playPause(){
		if(audio.paused){
		    audio.play();
		    playbtn.style.background = "url(images/pause_12px.png) no-repeat";
	    } else {
		    audio.pause();
		    playbtn.style.background = "url(images/play_12px.png) no-repeat";
	    }
	}
	function mute(){
		if(audio.muted){
		    audio.muted = false;
		    mutebtn.style.background = "url(images/speaker_muted_12px.png) no-repeat";
	    } else {
		    audio.muted = true;
		    mutebtn.style.background = "url(images/speaker_12px.png) no-repeat";
	    }
	}
	function seek(event){
	    if(seeking){
		    seekslider.value = event.clientX - seekslider.offsetLeft;
	        seekto = audio.duration * (seekslider.value / 100);
	        audio.currentTime = seekto;
	    }
    }
	function setvolume(){
	    audio.volume = volumeslider.value / 100;
    }
	function seektimeupdate(){
		var nt = audio.currentTime * (100 / audio.duration);
		seekslider.value = nt;
		var curmins = Math.floor(audio.currentTime / 60);
	    var cursecs = Math.floor(audio.currentTime - curmins * 60);
	    var durmins = Math.floor(audio.duration / 60);
	    var dursecs = Math.floor(audio.duration - durmins * 60);
		if(cursecs < 10){ cursecs = "0"+cursecs; }
	    if(dursecs < 10){ dursecs = "0"+dursecs; }
	    if(curmins < 10){ curmins = "0"+curmins; }
	    if(durmins < 10){ durmins = "0"+durmins; }
		curtimetext.innerHTML = curmins+":"+cursecs;
	    durtimetext.innerHTML = durmins+":"+dursecs;
	}
}
window.addEventListener("load", initAudioPlayer);
</script>
</head>
<body>
<div id="audio_player">
	<div id="audio_controls">
		<button id="playpausebtn"></button>
		<input id="seekslider" type="range" min="0" max="100" value="0" step="1">
		<div id="timebox">
		  <span id="curtimetext">00:00</span> / <span id="durtimetext">00:00</span>
		</div>
		<button id="mutebtn"></button>
	<input id="volumeslider" type="range" min="0" max="100" value="30" step="1">
	</div>
	<h3 id="playlist_status"></h3>
</div>
</asp:Content>
