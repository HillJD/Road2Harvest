<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="resources.aspx.cs" Inherits="upc_website.resources" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <span class="glyphicons glyphicons-paperclip mypage-glythicons"></span>
    </div>
    <div class="mypage-header text-center">
        <h4>Resources</h4>
    </div>
    


    <div class="jumbotron text-center">
   
   <!-- Verse of the Day. https://biblia.com/plugins/verseoftheday -->
<biblia:verseoftheday resource="kjv1900" width="300" height="250" singleImage="false" theme="colorbar" variant="light"></biblia:verseoftheday>
<!-- If you’re including multiple Biblia widgets, you only need this script tag once -->
<script src="//biblia.com/api/logos.biblia.js"></script>
<script>logos.biblia.init();</script>
   
        <h4><a runat="server" href="Give.aspx">Online Giving</a></h4>
        <h4><a runat="server" href="listen.aspx">Streaming Audio</a></h4>
        <h4><a runat="server" href="archives.aspx">Sermon Archives</a></h4>
        <h4><a runat="server" href="pastordesk.aspx">Pastor's Blog</a></h4>
        <h4><a runat="server" href="Links.aspx">Links</a></h4>
        <h4><a runat="server" href="~/bible">YouVersion Bible</a></h4>
    </div>

</asp:Content>
