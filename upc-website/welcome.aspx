<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="upc_website.welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center">
        <h2>Welcome Home!</h2>
        <p><a href="History.aspx">Our Church</a></p>
        <p><a href="pastor-info.aspx">Our Staff</a></p>
        <p><a href="Ministries.aspx">Our Ministries / Groups</a></p>
        <p><a href="help.aspx">Our Mission</a></p>
        <p><a href="beliefs.aspx">Our Beliefs</a></p>
        <p><a href="video-tour.aspx">Video Tour</a></p>
    </div>
    <div>
        <img id="church_pic" src="images/InsidePic.jpg" /> 
    </div>
</asp:Content>
