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

