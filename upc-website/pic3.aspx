<%@ Page Title="Pics 3" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pic3.aspx.cs" Inherits="upc_website.pic3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="carousel fade-carousel slide" data-ride="carousel" data-interval="false" id="bs-carousel">
   <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators"></ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner" id="inner">

        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
    <script>
        window.onload = load();
        function load() {

            //alert("Function Load()");
            var pics=new Array("0","1","2");
            for (var i = 0 ; i < 3 ; i++) {
                var path = "images/" + pics[i] + ".jpg";
                //alert("Function Before carousel.inner()");
                $('<div class="item"><img src="' + path  + '"><div class="carousel-caption"></div>   </div>').appendTo('.carousel-inner');
                //alert("Function After carousel.inner()");
                $(".carousel-indicators").after("<li data-target='#carousel-example-generic' data-slide-to=\"" + i + "\"></li>");
                $('.carousel-inner').after('<div class="item"><img src=' + path  + '></div>');
                //alert("Function Load after carousel.inner()");
            }

            $(".carousel-indicators li:first").addClass("active");
            $(".carousel-inner .item:first").addClass("active");
            $('.carousel').carousel();
        }
        window.onload = load;
    </script>
</asp:Content>
