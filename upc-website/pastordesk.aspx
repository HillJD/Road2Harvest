<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="pastordesk.aspx.cs" Inherits="upc_website.pastordesk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <span class="glyphicons glyphicons-temple-christianity-church mypage-glythicons"></span>
    </div>
    <div class="mypage-header text-center">
        <h4><b>Pastor's Blog</b></h4>
    </div>
    <asp:PlaceHolder ID="ControlContainer" runat="server"></asp:PlaceHolder>
    
</asp:Content>
