﻿<%@ Page Title="Pics #2" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pics2.aspx.cs" Inherits="upc_website.pics2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="margin-top:40px;">
    <h1 class="text-center">Carousel</h1>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img  class="thumbnail" src ="/images/pic1.jpg" width:300 height:300" alt="Chania">
    </div>

    <div class="item">
      <img class="thumbnail" src="/images/pic2.jpg" width:300 height:300" alt="Chania">
    </div>

    <div class="item">
      <img class="thumbnail" src="/images/pic3.jpg" width:300 height:300" alt="Flower">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
</asp:Content>
