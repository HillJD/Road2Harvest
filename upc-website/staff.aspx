<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="staff.aspx.cs" Inherits="upc_website.staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
    <span class="glyphicons glyphicons-temple-christianity-church mypage-glythicons"></span>
</div>
<div class="mypage-header text-center">
    <h4><b>Our Staff</b></h4>
</div>

<div class="container-fluid">
  <div class="row">
    <div class="col-xs-4 col-sm-5 col-lg-6" style="padding-top: 2px;  padding-bottom: 2px;">
        <img src="images/younghurst.jpg" style="border:2px #666 solid;height:215px;" class="img-circle">
    </div>
    <div class="col-xs-8 col-sm-7 col-lg-6" style="text-align:left;">
      <p>
        <button type="button" style="text-align:left;" class="btn-belief btn btn-link"data-toggle="collapse" data-target="#Staff00">Pastor Clifford Hurst</button>
          <div id="Staff00" class="collapse">
            Brief biography to follow.
          </div>
      </p>
    </div>
   </div>
  <div class="row">
    <div class="col-xs-4 col-sm-5 col-lg-6" style="padding-top: 2px;  padding-bottom: 2px;">
        <img src="images/McK_Crop.jpg" style="border:2px #666 solid; height:215px;" class="img-circle">
    </div>
    <div class="col-xs-8 col-sm-7 col-lg-6" style="text-align:left;">
      <p>
        <button type="button" style="text-align:left;" class="btn-belief btn btn-link"data-toggle="collapse" data-target="#Staff01">Youth Pastor Bryan McKelvey</button>
          <div id="Staff01" class="collapse">
            Brief biography to follow.
          </div>
      </p>
    </div>
  </div>
  <div class="row">
    <div class="col-xs-4 col-sm-5 col-lg-6" style="padding-top: 2px;  padding-bottom: 2px;">
        <img src="images/Ruth00.jpg" style="border:2px #666 solid;height:215px;" class="img-circle">
    </div>
    <div class="col-xs-8 col-sm-7 col-lg-6" style="text-align:left;">
      <p>
        <button type="button" style="text-align:left;" class="btn-belief btn btn-link"data-toggle="collapse" data-target="#Staff02">Children's Ministries Leader Ruth Maggard</button>
          <div id="Staff02" class="collapse">
            Brief biography to follow.
          </div>
      </p>
    </div>
   </div>
</div>




</asp:Content>
