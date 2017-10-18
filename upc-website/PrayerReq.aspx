<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PrayerReq.aspx.cs" Inherits="upc_website.PrayerReq" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div>
    <span class="glyphicons glyphicons-envelope mypage-glythicons"></span>
</div>
<div class="mypage-header text-center">
    <h4><b>Prayer Requests</b></h4>
</div>
<div class="jumbotron text-center">
        
    
        <div class="form-group">
            <label for="FromName">Name:</label>
            <input type="Name" class="form-control" id="FromName">
        </div>
        Would you like to be contacted by a pastor? <br>
        <div class="radio">
            <label><input type="radio" name="RadioYes">YES</label>
            <label><input type="radio" name="RadioNO">NO</label>
        </div>
        
        Email Address: <asp:TextBox ID="FromEmail" runat="server" /><br>
        
        Prayer Request: <br />
        <asp:TextBox ID="PrayerRequest" runat="server" Height="171px" TextMode="MultiLine"  Width="270px" /><br><br>
        <asp:Button ID="Submit" runat="server" onclick="Submit_Click" Text="Submit" /><br>
        
  
   

    <br>

    <h4>Other Resources</h4>
    <p><a href="help.aspx">Help</a></p>
    <p><a href="resources.aspx">Resources</a></p>
    <p><a href="services.aspx">Service Times</a></p>
</div>
</asp:Content>
