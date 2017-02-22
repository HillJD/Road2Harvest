<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addControlsFirstAttempt.aspx.cs" Inherits="upc_website.addControlsFirst_Attempt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    
     <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <asp:Literal ID="Literal2" runat="server"></asp:Literal>
        <asp:Literal ID="Literal3" runat="server"></asp:Literal>
       <!-- Stack the columns on mobile by making one full-width and the other half-width -->

    <div class="container">
    <div class="row">
        <div class="col-sm-6"><span class="glyphicons glyphicons-cart-tick x2"></span>Cart</div>
        <div class="col-sm-6"><span class="glyphicons glyphicons-battery-25 x2"></span>Battery</div>
    </div>

    <div class="row">
        <div class="col-sm-6"><span class="glyphicons glyphicons-balanced-diet x2"></span>Diet</div>
        <div class="col-sm-6"><span class="glyphicons glyphicons-bedroom-lamp  x2 "></span>Lamp</div>
    </div>
</div>

   
   </asp:Content>
