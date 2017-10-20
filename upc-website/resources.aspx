<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="resources.aspx.cs" Inherits="upc_website.resources" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <span class="glyphicons glyphicons-paperclip mypage-glythicons"></span>
    </div>
    <div class="mypage-header text-center">
        <h4>Resources</h4>
    </div>
    


    <div class="jumbotron text-center">
    <script type="text/javascript">
    document.write("<iframe src=\"http://www.kingjamesonline.org/inspiring-images-widget.php\" style=\"width: 344px; height: 344px; border: 0px solid #ffffff;\"></iframe>");
    </script>
        <h4><a runat="server" href="Give.aspx">Online Giving</a></h4>
        <h4><a runat="server" href="listen.aspx">Streaming Audio</a></h4>
        <h4><a runat="server" href="archives.aspx">Message Archives</a></h4>
        <h4><a runat="server" href="pastors-blog.aspx">Pastors Blog</a></h4>
        <h4><a runat="server" href="Links.aspx">Links</a></h4>
        <h4><a runat="server" href="~/bible">YouVersion Bible</a></h4>
    </div>

</asp:Content>
