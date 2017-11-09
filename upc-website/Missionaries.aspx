<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Missionaries.aspx.cs" Inherits="upc_website.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 <div>
        <span class="glyphicons glyphicons-temple-christianity-church mypage-glythicons"></span>
    </div>
    <div class="mypage-header text-center">
        <h4><b>Supported Missionaries</b></h4>
    </div>
    <div class="jumbotron text-center">

        <div class="panel-group" id="accordion">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Rev. Charles Akers Family</a>
                    </h4>
                </div>
                <div id="collapse1" class="panel-collapse collapse">
                    <div class="panel-body">
                        INSERT MISIONARY DETAILS HERE
                        <br />
                        <a href="http://beyondfrontiers.org" target="_blank"> Beyond Frontiers
                        </a>
                    </div>
                </div>
            </div>
         </div>
      </div>
    </asp:Content>