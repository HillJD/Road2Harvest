﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="media-1.aspx.cs" Inherits="upc_website.media_1" %>
<asp:Content ID="Head" ContentPlaceHolderID="headContent" runat="server">
<%--<script>
    function __doPostBack(eventTarget, eventArgument) {
        alert('Mike');
        document.Form1.__EVENTTARGET.value = eventTarget;
        document.Form1.__EVENTARGUMENT.value = eventArgument;
        console.debug('line 4');
        document.Form1.submit();
    }
</script>--%>
    <style>
        .myLink {
            padding:0px 9px;
            border:#555 solid thin;
            margin-bottom:.5em;
            color:black;
            margin-right:.5em;
            font-size:.875em;
            border-radius:3px;
        }

        button {padding-right:1em;}

        .flex {
            display:flex;
            justify-content:center;
        }

        .label1 {
            padding:0px 9px;
            /*border:#555 solid thin;*/
            /*border:hidden;*/
            margin-bottom:.5em;
            margin-right:.5em;
            color:black;
            font-size:.875em;
            /*border-radius:3px;*/
        }

        
    </style>

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center" >
        <h1>Union Pentecostal Church</h1>
        <p>Media</p>
        <p><a href="Default.aspx" class="btn btn-primary btn-lg">Home &raquo;</a></p>
    </div>

<%--<input type =hidden name ="__EVENTTARGET" value ="">
<input type =hidden name ="__EVENTARGUMENT" value ="">--%>

<%--<asp:Button ID="Button1" runat="server" onclick="Button2_Click" Text="Button" />--%>

<div class="flex">
    <a id="Button1" class="myLink" href="javascript:__doPostBack('Button1','Mikes Button1 PostBack')">1</a>

    <a id="Button2" class="myLink" href="javascript:__doPostBack('Button2','Mikes Button2 PostBack')">2</a>

    <a id="Button3" class="myLink" href="javascript:__doPostBack('Button3','Mikes Button3 PostBack')">3</a>

    <a id="Button4" class="myLink" href="javascript:__doPostBack('Button4','Mikes Button4 PostBack')">4</a>

    <asp:Label ID="label1" class="label1" runat="server"></asp:Label>
</div>





</asp:Content>