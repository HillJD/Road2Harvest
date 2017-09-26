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
  <h2 class="text-center">What we believe about giving</h2>
  <div class="row">      
    <button type="button" class="btn-belief btn-link" data-toggle="collapse" data-target="#ET0" style="text-align:left "padding-left: 2px"><p>Why give?</p></button>
    <div id="ET0" class="collapse">
      <p><span style="color:black" class="text-left small">Abraham, Moses, Malachi, etc...</span></p>
    </div>
  </div>     
  <div class="row">
    <button type="button" class="btn-belief btn btn-link" data-toggle="collapse" data-target="#ET1" style="text-align:left "padding-left: 2px"><p>How much to give</p></button>
    <div id="ET1" class="collapse">
      <p><span style="color:black" class="text-left small">Tithe, but you should know that this method adds 3% overhead.</span></p>
    </div>
  </div>
  <div class="row">      
    <button type="button" class="btn-belief btn btn-link" data-toggle="collapse" data-target="#ET2" style="text-align:left "padding-left: 2px"><p>We don't need your money</p></button>
    <div id="ET2" class="collapse">
      <p><span style="color:black" class="text-left small">We want you to be blessed by taking God at His Word and returning to Him that which is already HIS.</span></p>
    </div>
  </div>




  <div>
  <p><asp:ImageButton ID="ImageButton0" runat="server" OnClick="ImageButton0_Click" ImageUrl="~/images/easytithe-button.png" Width="100%" /></p>
  </div>
</div>
</asp:Content>
