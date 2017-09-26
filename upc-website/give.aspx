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
  <div class="row">
  <button type="button" class="btn-belief btn-link" data-toggle="collapse" data-target="#ET0"><p>Why give?</p></button>
    <div id="ET0" class="collapse">
        <p><span style="color:black" class="text-left small">It's God's plan (Abraham, Moses, Malachi...).</span></p>
  </div>
  <div class="row">
  <button type="button" class="btn-belief btn-link" data-toggle="collapse" data-target="#ET1"><p>How much to give?</p></button>
    <div id="ET1" class="collapse">
        <p><span style="color:black" class="text-left small">Tithe, and BTW, giving online costs UPC an extra 3%.</span></p>
    </div>
  </div>
  <div class="row">
  <button type="button" class="btn-belief btn-link" data-toggle="collapse" data-target="#ET2"><p>We don't need your money</p></button>
    <div id="ET2" class="collapse">
        <p><span style="color:black" class="text-left small">But we want you to be blessed of God by answering Him by returning HIS portion as noted in scripture.</span></p>
    </div>
  </div>
</div>
<div class="jumbotron text-left">
<p><asp:ImageButton ID="ImageButton0" runat="server" OnClick="ImageButton0_Click" ImageUrl="~/images/Logo-GB.svg" Width="100%" /></p>
</asp:Content>
