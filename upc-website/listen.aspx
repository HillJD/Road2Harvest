<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listen.aspx.cs" Inherits="upc_website.listen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <style>
        .image {
            width: 80%;
            height: auto;
            margin-bottom: 10px
        }

        .jumbotron p {
            margin-bottom: 0px;
            font-size: 21px;
            font-weight: 200;
        }
    </style>
    <script src="Content/listen.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <span class="glyphicons glyphicons-headphones mypage-glythicons"></span>
    </div>
    <div class="mypage-header text-center">
        <h4><b>Media</b></h4>
    </div>

    
    <asp:PlaceHolder ID="ControlContainer" runat="server"></asp:PlaceHolder>
    
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
            <a href="https://m.youtube.com/channel/UC0C_tCXvEb2yrdNZ5rVm-MQ"><span class="social social-youtube"></span></a>
            <a href="https://m.youtube.com/channel/UC0C_tCXvEb2yrdNZ5rVm-MQ"><p class="gly-paragraph">YouTube</p></a>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
            <a href="https://www.facebook.com/unionpentecostalchurch"><span class="social social-facebook"></span></a>
            <a href="https://www.facebook.com/unionpentecostalchurch"><p class="gly-paragraph">FaceBook</p></a>
        </div>

       <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
            <a href="https://tunein.com/radio/Union-Pentecostal-Church-s197173/"><span class="glyphicons glyphicons-headphones"></span></a>
            <a href="https://tunein.com/radio/Union-Pentecostal-Church-s197173/"><p class="gly-paragraph">TuneIn</p></a>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
            <a href="http://unionpentecostal.dyndns.org:88/broadwave.mp3?src=1&rate=1&ref=http%3A%2F%2Funionpentecostal.dyndns.org%3A88%2F"><span class="glyphicons glyphicons-headphones"></span></a>
            <a href="http://unionpentecostal.dyndns.org:88/broadwave.mp3?src=1&rate=1&ref=http%3A%2F%2Funionpentecostal.dyndns.org%3A88%2F"><p class="gly-paragraph">BroadWave</p></a>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
            <a href="video.aspx"><span class="glyphicons glyphicons-video-camera"></span></a>
            <a href="video.aspx"><p class="gly-paragraph">Video</p></a>
        </div>

</asp:Content>
