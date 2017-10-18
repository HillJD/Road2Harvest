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
            <input type="text" class="form-control" id="FromName">
        </div>
        Would you like to be contacted by a pastor?
        <div class="radio">
            <label><input type="radio" name="PastorContact">YES</label>
           </div>
    <div class="radio">
            <label><input type="radio" name="PastorContact">NO</label>
           </div>
    <div class="form-group">
            <label for="Email">Email Address:</label>
            <input type="email" class="form-control" id="Email">
        </div>
        
        <div class="form-group">
            <label for="Request">Prayer Request:</label>
            <textarea  class="form-control" rows="5" id="Request"> </textarea>
        </div>
        
        <button type="submit" class ="btn btn-default">Submit</button>
        
  
   

    <br>

    <h4>Other Resources</h4>
    <p><a href="help.aspx">Help</a></p>
    <p><a href="resources.aspx">Resources</a></p>
    <p><a href="services.aspx">Service Times</a></p>
</div>
</asp:Content>
