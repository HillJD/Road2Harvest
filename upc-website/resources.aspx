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
    


    <div class="text-center">
<img src="https://biblia.com/api/plugins/verseoftheday/kjv1900?width=300&height=250&singleImage=true&theme=imagebased&variant=dark" width="90%" /></a>
        <h4>Giving</h4>
        <h4>Streaming Audio</h4>
        <h4><a runat="server" href="pastors-blog.aspx">Pastors Blog</a></h4>
        <h4>Links</h4>
        <h4><a runat="server" href="~/bible">YouVersion Bible</a></h4>
    </div>

</asp:Content>
