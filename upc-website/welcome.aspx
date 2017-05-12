<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="upc_website.welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center">
        <h1>Union Pentecostal Church</h1>
        <h2>Welcome Home!</h2>
        <p><a href="location.aspx">Location</a></p>
        <p><a href="History.aspx">History</a></p>
        <p><a href="beliefs.aspx">What we believe</a></p>
        <p><a href="help.aspx">Help</a></p>
        <p><a href="pastor-info.aspx">Pastor Info</a></p>
        <p><a href="video-tour.aspx">Video Tour</a></p>
    </div>
</asp:Content>
