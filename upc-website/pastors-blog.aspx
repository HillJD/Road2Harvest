<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pastors-blog.aspx.cs" Inherits="upc_website.pastors_blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
    <span class="glyphicons glyphicons-paperclip mypage-glythicons"></span>
</div>
<div class="mypage-header text-center">
    <h4>Pastor's Blog</h4>
</div>

    <select id="ddlBooks" size="10" runat="server" 
    onchange="
        if(this.selectedIndex !=0)
        
            document.getElementById('pValue').innerHTML = 'You chose: ' + this.value.substr(0,3); 
        else 
            document.getElementById('pValue').innerHTML = '';">
</select>


<p id="pValue"></p>





</asp:Content>

