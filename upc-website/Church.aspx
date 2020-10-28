<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Church.aspx.cs" Inherits="upc_website.history" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <span class="glyphicons glyphicons-temple-christianity-church mypage-glythicons"></span>
    </div>
    <div class="mypage-header text-center">
        <h4><b>Our Church</b></h4>
    </div>

    <div class="jumbotron text-left">

        <button id="myButton" type="button" class="btn-belief" data-toggle="collapse" data-target="#Ch1">
            <p>
                Our mission is...
            </p>
        </button>
        <div id="Ch1" class="collapse">
            <p><span style="color: black" class="text-left small"> to present 'All the Gospel for All of Life.'
        In doing so, our focus is Christ, our experience is Pentecostal, and our desire is holiness of life.  Union Pentecostal Church is a classical Pentecostal church that exists to preach and live unashamedly the whole counsel of Scripture.  Our desire is... 1) to provide an atmosphere of worship whereby one can focus on Christ and experience Him by faith in a real, felt way 2)to provide opportunities through service, activities, and events whereby everyone assists everyone in Christian growth and maturity to come into the full stature of Christ, and 3)to make an effort through our church to reach all we can, whoever they may be, whenever we can, by whatever Biblical means to the Lord Jesus Christ.  To accomplish the above we are determined to remain a full Gospel church where our focus is Christ, our experience is Pentecostal and our desire is holiness of life.</span></p>
        </div>

        <div class="embed-responsive embed-responsive-16by9">
            <iframe src="https://embed.restream.io/player/index.html?token=fd88a43d9883ff4427ce6a94f61f1f90" width="640" height="396" frameborder="0" allowfullscreen="1"></iframe><p>Powered by <a href="https://restream.io">Restream.io</a></p>
        </div>
        
        <img style="margin-top: 10px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" src="images/Worship00.jpg" class="img-responsive">

        <div class="text-center" style="padding: 10px 0px;">
            <p><a style="text-decoration: none;" href="services.aspx">Service Times</a></p>
            <p><a href="History.aspx">History</a></p>
        </div>
    </div>

</asp:Content>
