<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listen.aspx.cs" Inherits="upc_website.listen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
    <span class="glyphicons glyphicons-headphones mypage-glythicons"></span>
</div>
<div class="mypage-header text-center">
    <h4><b>Listen</b></h4>
</div>

    <div class="jumbotron text-center">
        
        
        <p><asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/images/sermon stream.jpg" Width="100%" /></p>
        <p><asp:ImageButton ID="ImageButton2" runat="server" OnClick="ImageButton2_Click" ImageUrl="~/images/sermon archive.jpg" Width="100%" /></p>
        <p><asp:ImageButton ID="ImageButton3" runat="server" OnClick="ImageButton3_Click" ImageUrl="~/images/tunein.jpg" Width="100%" /> </p>
         <asp:Label ID="Label1" runat="server" Text="day and time dayton"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Day Check NULL"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Time Check NULL"></asp:Label>
    </div>
</asp:Content>
