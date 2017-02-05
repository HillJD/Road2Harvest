<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addControlsFirstAttempt.aspx.cs" Inherits="upc_website.addControlsFirst_Attempt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </div> <!--myCarousel-->

    <script>
        $( document ).ready(function() {
            $("#myCarousel").carousel();
            alert("Done!");
        });
    </script>

















</asp:Content>
