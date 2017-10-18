<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="archives.aspx.cs" Inherits="upc_website.archives" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
    <span class="glyphicons glyphicons-headphones mypage-glythicons"></span>
</div>
<div class="mypage-header text-center">
    <h4><b>Message Archives</b></h4>
</div>

    <asp:GridView ID="GVArch" runat="server"></asp:GridView>
</asp:Content>
