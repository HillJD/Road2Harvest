<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="prayer.aspx.cs" Inherits="upc_website.prayer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div>
    <span class="glyphicons glyphicons-envelope mypage-glythicons"></span>
</div>
<div class="mypage-header text-center">
    <h4><b>Prayer</b></h4>
</div>
<div class="jumbotron text-center">

    <p><a href="PrayerReq.aspx">Share a prayer request</a></p>

    <p><a href="help.aspx">Help</a></p>
    <p><a href="resources.aspx">Resources</a></p>
    <p><a href="services.aspx">Service Times</a></p>
</div>
</asp:Content>
