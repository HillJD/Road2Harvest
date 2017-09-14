<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="events.aspx.cs" Inherits="upc_website.calendar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
    <span class="glyphicons glyphicons-calendar mypage-glythicons"></span>
</div>
<div class="mypage-header text-center">
    <h4><b>Events</b></h4>
</div>
        
<iframe id="calendar" src="https://calendar.google.com/calendar/embed?showPrint=0&amp;showTabs=0&amp;showCalendars=0&amp;mode=AGENDA&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=upentechurch%40gmail.com&amp;color=%23ffffff&amp;ctz=America%2FNew_York" style="border-width:0"width="100%" height="600px" &amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=upentechurch%40gmail.com&amp;color=%23ffffff&amp;ctz=America%2FNew_York" style="border-width:4px" width="100%" height="600" frameborder="0" scrolling="no"></iframe>
    
</asp:Content>
