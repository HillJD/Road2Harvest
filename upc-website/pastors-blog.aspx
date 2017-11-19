<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pastors-blog.aspx.cs" Inherits="upc_website.pastors_blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
    <span class="glyphicons glyphicons-paperclip mypage-glythicons"></span>
</div>
<div class="mypage-header text-center">
    <h4>Pastor's Blog</h4>
</div>





    <link href="http://code.jquery.com/ui/1.11.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script type="text/javascript">
function openPopup(ArticleID, Title, SubTitle) {
    $('#lblId').text(ArticleID);
    $('#lblName').text(Title);
$('#lblPrice').text(SubTitle);
$("#popupdiv").dialog({
title: "jQuery Show Gridview Row Details in Popup",
width: 300,
height: 250,
modal: true,
buttons: {
Close: function () {
$(this).dialog('close');
}
}
});
}
</script>
<style type="text/css">
.GridviewDiv {font-size: 100%; font-family: 'Lucida Grande', 'Lucida Sans Unicode', Verdana, Arial, Helevetica, sans-serif; color: #303933;}
.headerstyle
{
color:#FFFFFF;border-right-color:#abb079;border-bottom-color:#abb079;background-color: #df5015;padding:0.5em 0.5em 0.5em 0.5em;text-align:center;
}
</style>

<div id="popupdiv" title="Basic modal dialog" style="display: none">
Product Id: <label id="lblId"></label><br />
Product Name: <label id="lblName"></label><br />
Price: <label id="lblPrice"></label>
</div>



<table class="table" style="width:100%">
  <tr>
    <td style="text-align:right">Search Title:</td>
    <td><asp:TextBox ID="txtFind01" runat="server"></asp:TextBox><br /></td>
  </tr>
  <tr>
    <td style="text-align:right">Search Text:</td>
    <td><asp:TextBox ID="txtFind02" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td></td>
    <td><input type="submit" id="Submit1" runat="server" /></td>
  </tr>
</table>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" ShowHeader="False" DataKeyNames="ArticleID" DataSourceID="SqlDataSource1" SkinID="UPC_GV1">
        <Columns>
            <asp:BoundField DataField="ArticleID" HeaderText="ArticleID" InsertVisible="False" ReadOnly="True" SortExpression="ArticleID" />
            <asp:TemplateField HeaderText="Title" SortExpression="Title">
                <ItemTemplate>
                    <h5><asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label></h5>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("SubTitle") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <%--<asp:BoundField DataField="Body" HeaderText="Body" SortExpression="Body" />--%>
            <asp:TemplateField>
<ItemTemplate>
<a href="#" class="gridViewToolTip" onclick='openPopup("<%# Eval("ArticleID")%>","<%# Eval("Title")%>","<%# Eval("SubTitle")%>")'>test</a>
</ItemTemplate>
</asp:TemplateField>
        </Columns>
        <PagerStyle HorizontalAlign = "Center" CssClass = "GridPager" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_110695_carouselConnectionString %>"
        SelectCommand="SELECT [ArticleID], [Title], [Body], [SubTitle] FROM [Articles]"
            FilterExpression="[Title] LIKE '%{0}%' AND [Body] LIKE '%{1}%'">

                    <FilterParameters>
                        <asp:ControlParameter Name="Title" 
                            ControlID="txtFind01" PropertyName="Text" ConvertEmptyStringToNull="false"/>
                        <asp:ControlParameter Name="Body" 
                            ControlID="txtFind02" PropertyName="Text" ConvertEmptyStringToNull="false"/>
                    </FilterParameters>
    </asp:SqlDataSource>


</asp:Content>

