<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="upc_website.welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
    <span class="glyphicons glyphicons-temple-christianity-church mypage-glythicons"></span>
</div>
<div class="mypage-header text-center">
    <h4><b>Welcome</b></h4>
</div>
    <div class="jumbotron text-center">
        <h2>Welcome Home!</h2>
        <p><a href="Church.aspx">Our Church</a></p>
        <p><a href="staff.aspx">Our Staff</a></p>
        <p><a href="Ministries.aspx">Our Ministries / Groups</a></p>
        <p><a href="help.aspx">Our Mission</a></p>
        <p><a href="beliefs.aspx">Our Beliefs</a></p>
        <p><a href="video-tour.aspx">Video Tour</a></p>
    </div>
    <div>
        <img id="church_pic" src="images/InsidePic.jpg" /> 
    </div>
</asp:Content>
