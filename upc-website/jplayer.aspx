<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="jplayer.aspx.cs" Inherits="upc_website.jplayer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">

</asp:Content>    




<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<link href="pink.flag/css/jplayer.pink.flag.css" rel="stylesheet" />
<script src="pink.flag/js/jquery.jplayer.min.js"></script>
<!--<script src="Scripts/jquery-1.10.2.min.js"></script>-->

<script type="text/javascript">
    $(document).ready(function () {
        $("#jquery_jplayer_1").jPlayer({
            ready: function () {
                $(this).jPlayer("setMedia", {
                    title: "Inexusable Excuses",
                    m4a: "audio/4905_20sec.mp3",
                    //m4a: "soveryhappy.mp3",
                    //m4a: "http://www.jplayer.org/audio/m4a/Miaow-07-Bubble.m4a",
                    oga: "http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"
                });
            },
            cssSelectorAncestor: "#jp_container_1",
            swfPath: "/js",
            supplied: "m4a, oga",
            useStateClassSkin: true,
            autoBlur: false,
            smoothPlayBar: true,
            keyEnabled: true,
            remainingDuration: true,
            toggleDuration: true
        });
    });
    </script>

    
<div id="jquery_jplayer_1" class="jp-jplayer"></div>
<div id="jp_container_1" class="jp-audio" role="application" aria-label="media player" style="margin:20px auto;">
  <div class="jp-type-single">
    <div class="jp-gui jp-interface">
      <div class="jp-volume-controls">
        <button class="jp-mute" role="button" tabindex="0">mute</button>
        <button class="jp-volume-max" role="button" tabindex="0">max volume</button>
        <div class="jp-volume-bar">
          <div class="jp-volume-bar-value"></div>
        </div>
      </div>
      <div class="jp-controls-holder">
        <div class="jp-controls">
          <button class="jp-play" role="button" tabindex="0">play</button>
          <button class="jp-stop" role="button" tabindex="0">stop</button>
        </div>
        <div class="jp-progress">
          <div class="jp-seek-bar">
            <div class="jp-play-bar"></div>
          </div>
        </div>
        <div class="jp-current-time" role="timer" aria-label="time">&nbsp;</div>
        <div class="jp-duration" role="timer" aria-label="duration">&nbsp;</div>
        <div class="jp-toggles">
          <button class="jp-repeat" role="button" tabindex="0">repeat</button>
        </div>
      </div>
    </div>
    <div class="jp-details">
      <div class="jp-title" aria-label="title">&nbsp;</div>
    </div>
    <div class="jp-no-solution">
      <span>Update Required</span>
      To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.
    </div>
  </div>
</div>
</asp:Content>
