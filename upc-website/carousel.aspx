<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="carousel.aspx.cs" Inherits="upc_website.addControlsFirst_Attempt" %>


<asp:Content ID="ContentHead" ContentPlaceHolderID="headContent" runat="server">
    <link href="content/site2.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <%--<asp:Literal ID="Literal1" runat="server"></asp:Literal>
    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
    <asp:Literal ID="Literal3" runat="server"></asp:Literal>--%>
    <asp:PlaceHolder ID="ControlContainer" runat="server"></asp:PlaceHolder>

    <!-- Stack the columns on mobile by making one full-width and the other half-width -->

    <div class="row">
    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
      <span class="glyphicons glyphicons-map-marker"></span>
      <p class="gly-paragraph">Location</p>      
   </div>

       <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
      <span class="glyphicons glyphicons-clock"></span>
      <p class="gly-paragraph">Service Times</p>
   </div>

    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
      <span class="glyphicons glyphicons-temple-christianity-church"></span>
      <p class="gly-paragraph">Welcome Home</p>
   </div>

    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
      <span class="glyphicons glyphicons-headphones"></span>
      <p class="gly-paragraph">Listen-Live</p>
   </div>

   <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
      <span class="glyphicons glyphicons-group"></span>
      <p class="gly-paragraph">Connection Card</p>
   </div>

   <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
      <span class="glyphicons glyphicons-calendar"></span>
      <p class="gly-paragraph">Upcoming Events</p>
   </div>
    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
      <span class="glyphicons glyphicons-envelope"></span>
      <p class="gly-paragraph">Prayer Requests</p>
    </div>
    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
      <span class="glyphicons glyphicons-paperclip"></span>
      <p class="gly-paragraph">Resources</p>
   </div>
   </div>
  </div>

   
   </asp:Content>
