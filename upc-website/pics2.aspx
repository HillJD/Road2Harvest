<%@ Page Title="Pics #2" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pics2.aspx.cs" Inherits="upc_website.pics2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">
    window.onload = load();

    function load() {
        var d = new Date()
        var gmtOffSet = -d.getTimezoneOffset();
        var gmtHours = Math.floor(gmtOffSet / 60);
        var GMTMin = Math.abs(gmtOffSet % 60);
        var dot = ".";
        var retVal = "" + gmtHours + dot + GMTMin;
        alert(retVal)
        
    alert(retVal);
}
</script>

    <%--<asp:HiddenField ID="clientDateTime" runat="server" />
    <asp:HiddenField ID="offSet" runat="server" />
    <asp:Te--%>xtBox ID="TextBox1" runat="server"></asp:TextBox>

    <div class="container" style="margin-top:40px;">
    <h1 class="text-center">
        <%--<asp:Button ID="Button2" runat="server" OnClick="$('#Button1').trigger('Button1_Click1')" Text="Button" />--%>
        <asp:Button ID="myCarousel" Text="Submit" runat="server" ClientIDMode="Static"/>
        <asp:Button ID="Button_Previous" runat="server" OnClick="Button_Click" Text="Previous"/>
        <asp:Button ID="Button_Next" runat="server" OnClick="Button_Click" Text="Next" />
        Our News</h1>
<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false">
  <!-- Indicators -->
  <%--<ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>--%>

  <!-- Wrapper for slides -->
  <div id="wrapper" class="carousel-inner" role="listbox" runat="server">
    <div class="item active">
      <img  id="img1" runat="server" class="thumbnail" src ="/images/pic1.jpg" alt="Chania" enableviewstate="True" >
        <div class="carousel-caption">
            <hgroup>
                <h1>Revival April 6, 2017</h1>        
                <h3>Bro. Noah Dearth (hero) </h3>
                <h3>Sunday - Wednesday </h3>
            </hgroup>
        </div>
    </div>

    <div class="item">
      <img class="thumbnail" src="/images/pic2.jpg"  alt="Chania">
        <div class="carousel-caption">
            <hgroup>
                <h1>Revival April 6, 2017</h1>        
                <h3>Bro. Bob Smith (carousel-caption) </h3>
                <h3>Sunday - Wednesday </h3>
            </hgroup>
        </div>
    </div>

    <div class="item">
      <img class="thumbnail" src="/images/pic3.jpg"  alt="Flower">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
</asp:Content>
