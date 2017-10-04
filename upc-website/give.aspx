<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Give.aspx.cs" Inherits="upc_website.give" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div>
    <span class="glyphicons glyphicons-paperclip mypage-glythicons"></span>
</div>
    <div class="mypage-header text-center">
        <h4><b>Giving</b></h4>
    </div>

<div class="jumbotron text-Left" style="text-align:left">
  <div>
  <p><asp:ImageButton ID="ImageButton0" runat="server" OnClick="ImageButton0_Click" ImageUrl="~/images/ET1.png" Width="100%" /></p>
  </div>
  <a href="https://www.easytithe.com/dl/?uid=Unio1101162" target="_blank"><img src="~/images/ET1.png"></a>
</div>
</asp:Content>
