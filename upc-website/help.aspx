<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="help.aspx.cs" Inherits="upc_website.help" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center">
        <h1>Union Pentecostal Church</h1>
        <h2>Help</h2>
        <p>
            <button type="button" style="text-align:left;" class="btn btn-link"data-toggle="collapse" data-target="#Help1">How can I be saved?</button>
            <div id="Help1" class="collapse">
                Turn right onto the Roman road and keep going straight.
            </div>
        </p>
        <p>
            <button type="button" style="text-align:left;" class="btn btn-link"data-toggle="collapse" data-target="#Help2">How can I be free?</button>
            <div id="Help2" class="collapse">
                You'll like it.  It feels so good to be free.
            </div>
        </p>
        <p>
            <button type="button" style="text-align:left;" class="btn btn-link"data-toggle="collapse" data-target="#Help2">How can I have assurance?</button>
            <div id="Help2" class="collapse">
                Blessed assurance.
            </div>
        </p>
    </div>
</asp:Content>
