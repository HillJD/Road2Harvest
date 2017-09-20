<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="bible.aspx.cs" Inherits="upc_website.bible" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <span class="glyphicons glyphicons-book mypage-glythicons"></span>
</div>
<div class="mypage-header text-center">
    <h4><b>Bible</b></h4>
</div>
    
<iframe id="bible_iframe" src="https://www.bible.com"></iframe>
</asp:Content>
