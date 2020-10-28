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
        <h4><b>Listen</b></h4>
    </div>

    <div class="jumbotron text-center">
        <div class="embed-responsive embed-responsive-16by9">
            <iframe src="https://embed.restream.io/player/index.html?token=fd88a43d9883ff4427ce6a94f61f1f90" width="640" height="396" frameborder="0" allowfullscreen="1"></iframe>
        </div>

        <%-- <p><asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/images/sermon stream 1.jpg" Width="100%" /></p>
        <p><asp:ImageButton ID="ImageButton2" runat="server" OnClick="ImageButton2_Click" ImageUrl="~/images/sermon archive 1.jpg" Width="100%" /></p>
        <p><asp:ImageButton ID="ImageButton3" runat="server" OnClick="ImageButton3_Click" ImageUrl="~/images/tunein.jpg" Width="100%" /> </p>--%>
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
            <a href="https://www.facebook.com/unionpentecostalchurch"><span class="glyphicons glyphicons-FaceBook"></span></a>
            <a href="https://www.facebook.com/unionpentecostalchurch"><p class="gly-paragraph">Live Streaming on FaceBook</p></a>
        </div>

       <p id="yt" style="display:none">
            <asp:ImageButton ID="ImageButton4" runat="server" OnClick="ImageButton4_Click" ImageUrl="~/images/youtube-streaming.jpg" CssClass="image" />
        </p>
        <p>
            <asp:ImageButton ID="ImageButton5" runat="server" OnClientClick="myFunction();"  OnClick="ImageButton4_Click" ImageUrl="~/images/facebook-streaming.jpg"  CssClass="image" />
        </p>
            <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/images/sermon stream 1.jpg" CssClass="image" />
        <p>
            <asp:ImageButton ID="ImageButton3" runat="server" OnClick="ImageButton3_Click" ImageUrl="~/images/tunein2018.jpg" CssClass="image" />
        </p>
        <p>
            <asp:ImageButton ID="ImageButton2" runat="server" OnClick="ImageButton2_Click" ImageUrl="~/images/sermon archive 1.jpg" CssClass="image" />
        </p>

    </div>
    <script type="text/javascript">
        window.onload = function () {
            myFunction();
            }
        
        
        
    </script>

</asp:Content>
