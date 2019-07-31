﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="video2.aspx.cs" Inherits="upc_website.video2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <%--<meta charset="utf-8" />
    <title>Cross Browser Styled Video Player - Mozilla</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />--%>
    <link rel="stylesheet" href="Content/video.css" type="text/css"/>
    <!--[if lt IE 9]><script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6.2/html5shiv-printshiv.min.js" type="text/javascript"></script><![endif]-->
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>UPC Demo Video</h1>
	<figure id="videoContainer" data-fullscreen="false">
		<video id="video" controls preload="metadata">
			<source src="images/carousel/Intro Final W.Sound_3_25sec_bitrate2.mp4" type="video/mp4">
			<%--<source src="http://iandevlin.github.io/mdn/video-player/video/tears-of-steel-battle-clip-medium.webm" type="video/webm">--%>
			<%--<source src="http://iandevlin.github.io/mdn/video-player/video/tears-of-steel-battle-clip-medium.ogg" type="video/ogg">--%>
			<!-- Flash fallback -->
			<object type="application/x-shockwave-flash" data="flash-player.swf?videoUrl=http://iandevlin.github.io/mdn/video-player/video/tears-of-steel-battle-clip-medium.mp4" width="1024" height="576">
				<param name="movie" value="flash-player.swf?videoUrl=http://iandevlin.github.io/mdn/video-player/video/tears-of-steel-battle-clip-medium.mp4" />
				<param name="allowfullscreen" value="true" />
				<param name="wmode" value="transparent" />
				<param name="flashvars" value="controlbar=over&amp;image=img/poster.jpg&amp;file=flash-player.swf?http://iandevlin.github.io/mdn/video-player/videoUrl=video/tears-of-steel-battle-clip-medium.mp4" />
				<img alt="Tears of Steel poster image" src="img/poster.jpg" width="1024" height="428" title="No video playback possible, please download the video from the link below" />
			</object>
			<!-- Offer download -->
			<%--<a href="http://iandevlin.github.io/mdn/video-player/video/tears-of-steel-battle-clip-medium.mp4">Download MP4</a>--%>
		</video>
		<div id="video-controls" class="controls" data-state="hidden">
			<button id="playpause" type="button" data-state="play">Play/Pause</button>
			<button id="stop" type="button" data-state="stop">Stop</button>
			<div class="progress">
				<progress id="progress" value="0" min="0">
					<span id="progress-bar"></span>
				</progress>
			</div>
			<button id="mute" type="button" data-state="mute">Mute/Unmute</button>
			<button id="volinc" type="button" data-state="volup">Vol+</button>
			<button id="voldec" type="button" data-state="voldown">Vol-</button>
			<button id="fs" type="button" data-state="go-fullscreen">Fullscreen</button>
		</div>
		<%--<figcaption>
			&copy; Blender Foundation | <a href="http://mango.blender.org">mango.blender.org</a>
		</figcaption>--%>
	</figure>
	<script src="Scripts/video-player.js"></script>
</asp:Content>
