<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Links.aspx.cs" Inherits="upc_website.Links" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <span class="glyphicons glyphicons-paperclip mypage-glythicons"></span>
    </div>
    <div class="mypage-header text-center">
        <h4>Links</h4>
    </div>
    


    <div class="jumbotron text-center">

        <h4><a runat="server" href="Give.aspx">Online Giving</a></h4>
        <h4><a runat="server" href="listen.aspx">Streaming Audio</a></h4>
        <h4><a runat="server" href="pastors-blog.aspx">Pastors Blog</a></h4>
        <h4><a runat="server" href="~/bible">YouVersion Bible</a></h4>
        <h4>Rev. Joe Serta</h4>
    </div>
    <div>
        <img id="church_pic" src="images/UPC_CM.jpg" /> 
    </div>

</asp:Content>
