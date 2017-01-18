<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pics.aspx.cs" Inherits="upc_website.pics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container align-center">
        <div class="col-md-6">
            <div class="carousel slide" id="myCarousel">
                <div class="carousel-inner">
                    <div class="item active">
                        <div class="col-lg-4 col-xs-4 col-md-4 col-sm-4">
                            <a href="#">
                                <img style="margin: auto" src="images/pic1.jpg" class="img-responsive">1</a>
                        </div>
                    </div>
                    <div class="item">
                        <div class="col-lg-4 col-xs-4 col-md-4 col-sm-4">
                            <a href="#">
                                <img style="margin: auto" src="images/pic2.jpg" class="img-responsive">2</a>
                        </div>
                    </div>
                    <div class="item">
                        <div class="col-lg-4 col-xs-4 col-md-4 col-sm-4">
                            <a href="#">
                                <img style="margin: auto" src="images/pic3.jpg" class="img-responsive">3</a>
                        </div>
                    </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i></a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i></a>
            </div>
        </div>
    </div>




</asp:Content>
