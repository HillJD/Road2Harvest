<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="default.aspx.cs" Inherits="upc_website.NewCarousel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    


    <%--<asp:Literal ID="Literal1" runat="server"></asp:Literal>
    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
    <asp:Mike Literal ID="Literal3" runat="server"></asp:Literal>--%>
    <!--Stack the columns on mobile by making one full-width and the other half-width -->
    
    <asp:PlaceHolder ID="ControlContainer" runat="server"></asp:PlaceHolder>
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
            <a href="location.aspx"><span class="glyphicons glyphicons-map-marker"></span></a>
            <a href="location.aspx"><p class="gly-paragraph">Location</p></a>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
            <a href="services.aspx"><span class="glyphicons glyphicons-clock"></span></a>
            <a href="services.aspx"><p class="gly-paragraph">Services</p></a>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
            <a href="welcome.aspx"><span class="glyphicons glyphicons-temple-christianity-church"></span></a>
            <a href="welcome.aspx"><p class="gly-paragraph">Welcome</p></a>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
            <a href="listen.aspx"><span class="glyphicons glyphicons-headphones"></span></a>
            <a href="listen.aspx"><p class="gly-paragraph">Listen</p></a>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
            <a href="give.aspx"><span class="glyphicons glyphicons-donate"></span></a>
            <a href="give.aspx"><p class="gly-paragraph">Giving</p></a>
        </div>

        <%--<div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
            <a href="connect.aspx"><span class="glyphicons glyphicons-group"></span></a>
            <a href="connect.aspx"><p class="gly-paragraph">Connection</p></a>
        </div>--%>

        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
            <a href="events.aspx"><span class="glyphicons glyphicons-calendar"></span></a>
            <a href="events.aspx"><p class="gly-paragraph">Events</p></a>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
            <a href="prayer.aspx"><span class="glyphicons glyphicons-envelope"></span></a>
            <a href="prayer.aspx"><p class="gly-paragraph">Prayer</p></a>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
            <a href="resources.aspx"><span class="glyphicons glyphicons-paperclip"></span></a>
            <a href="resources.aspx"><p class="gly-paragraph">Resources</p></a>
        </div>
        
    </div>
    <script>
        $(document).ready(function () {

            $("#MainContent_myCarousel").on('slid.bs.carousel', function () {
                var v = $(".active").find("video")[0];
                if (v) {
                    v.play();
                }
            });
        });   
       
    </script>

    
</asp:Content>