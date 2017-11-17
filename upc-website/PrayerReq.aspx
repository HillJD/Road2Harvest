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
        
    
        Name <br />
        <asp:TextBox ID="Name" runat="server" Width="90%"></asp:TextBox>
        <br /> <br />
    
        Would you like to be contacted by a pastor? <br />
        <asp:RadioButton ID="PastorYes" runat="server" GroupName="PastorContact" Text="Yes" />
        <asp:RadioButton ID="PastorNo" runat="server" GroupName="PastorContact" Text="No" />
    <br /><br />
        Email  <br />
        <asp:TextBox ID="Email" runat="server" Width="90%"></asp:TextBox>  <br />

        Prayer Request <br />
        <asp:TextBox ID="PrayerRequest" runat="server" Rows="3" Width="90%" TextMode="MultiLine"></asp:TextBox> <br /><br />
  
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
     <br />
    <br>

    <h4>Other Resources</h4>
    <p><a href="help.aspx">Help</a></p>
    <p><a href="resources.aspx">Resources</a></p>
    <p><a href="services.aspx">Service Times</a></p>
</div>
</asp:Content>
