﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="video.aspx.cs" Inherits="upc_website.video" %>
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
    <div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.restream.io/?token=7ba27e78f1af47499e6aec8a71206576&vwrs=1" allow="autoplay" allowfullscreen="1" frameborder="0" style="position:absolute;top:0;left:0;width:100%;height:100%;"/></div>
    <script type="text/javascript">
        window.onload = function () {
            myFunction();
            }
    </script>

</asp:Content>
