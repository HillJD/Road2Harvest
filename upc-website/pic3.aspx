<%@ Page Title="Pics 3" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pic3.aspx.cs" Inherits="upc_website.pic3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="carousel fade-carousel slide" data-ride="carousel" data-interval="false"></div>
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        

        <!-- Wrapper for slides -->
        <div class="carousel-inner">

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <!-- Indicators -->
        <div class="carousel-indicators"><ol></ol></div>
    </div>

    <script>
        window.onload = load();
        function load() {

            //alert("Function Load()");
            var pics = new Array("0", "1", "2","3","4","5","6","7");
            for (var i = 0 ; i < 8 ; i++) {
                var path = "images/" + pics[i] + ".jpg";
                $('<div class="item"><img src="' + path + '"><div class="carousel-caption"></div></div>').appendTo('.carousel-inner');
                $(".carousel-indicators").after("<li data-target='#carousel-example-generic' data-slide-to=\"" + i + "\"></li>");
            }

            $(".carousel-indicators li:first").addClass("active");
            $(".carousel-inner .item:first").addClass("active");
            $('.carousel').carousel();
        }
        //window.onload = load;
    </script>
</asp:Content>
