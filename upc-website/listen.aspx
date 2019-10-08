<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listen.aspx.cs" Inherits="upc_website.listen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <span class="glyphicons glyphicons-headphones mypage-glythicons"></span>
    </div>
    <div class="mypage-header text-center">
        <h4><b>Listen</b></h4>
    </div>
    <div class="jumbotron">
        <div class="listen-container">
            <div class="listen-item">
                <asp:ImageButton ID="ImageButton4" runat="server" OnClick="ImageButton4_Click" ImageUrl="~/images/youtube-streaming.jpg" CssClass="listen-image" />
            </div>
            <div class="listen-item">
                <asp:ImageButton ID="ImageButton5" runat="server" OnClick="ImageButton5_Click" ImageUrl="~/images/facebook-streaming.jpg" CssClass="listen-image" />
            </div>
            <div class="listen-item">
                <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/images/stream-audio-sermons.jpg" CssClass="listen-image" />
            </div>
            <div class="listen-item">
                <asp:ImageButton ID="ImageButton3" runat="server" OnClick="ImageButton3_Click" ImageUrl="~/images/tunein.jpg" CssClass="listen-image" />
            </div>
            <div class="listen-item">
                <asp:ImageButton ID="ImageButton2" runat="server" OnClick="ImageButton2_Click" ImageUrl="~/images/search-sermon-archive.jpg" CssClass="listen-image" />
            </div>
        </div>
    </div>
</asp:Content>
