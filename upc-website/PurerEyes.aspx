<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PurerEyes.aspx.cs" Inherits="upc_website.resources" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <span class="glyphicons glyphicons-paperclip mypage-glythicons"></span>
    </div>
    <div class="mypage-header text-center">
        <h4>Purer Eyes</h4>
    </div>
    


    <div class="jumbotron text-center">
   
   <img src="images/PurerEyes.png"  style="border: 2px #666 solid;" class="img-rounded img-responsive" />
   
        <br />
        <h2>Resouces</h2>
        <br />


        
        <h4><a runat="server" href="Give.aspx">Online Giving</a></h4>
        
    </div>

</asp:Content>
