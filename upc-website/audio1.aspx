<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="audio1.aspx.cs" Inherits="upc_website.audio1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <script src="Scripts/audio_player.js"></script>
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
	<input id="volumeslider" type="range" min="0" max="100" value="30" step="1">
	</div>
	<h3 id="playlist_status"></h3>
</div>

</asp:Content>
