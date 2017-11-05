<%@ Page Title="" Language="C#" StyleSheetTheme="UPC_Skins" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="archives.aspx.cs" Inherits="upc_website.archives" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
    <span class="glyphicons glyphicons-headphones mypage-glythicons"></span>
</div>
<div class="mypage-header text-center">
    <h4><b>Message Archives</b></h4>
</div>



    <div class="table-responsive">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="SermonAudioID" DataSourceID="SqlDataSource1" SkinID="UPC_GV1">
            <Columns>
                <asp:ButtonField CommandName="Play" ShowHeader="False" Text='<i class="glyphicons glyphicons-play mypage-glythicons"></i>' />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Speaker" HeaderText="Speaker" SortExpression="Speaker" />
                <asp:BoundField DataField="SermonDt" HeaderText="Date" SortExpression="SermonDt" dataformatstring="{0:MM/dd/yy}" />
                <asp:BoundField DataField="AudioURL" HeaderText="MP3" SortExpression="MP3" />
                <asp:ImageField HeaderText="Image"
                    DataImageUrlField="ImageURL" 
                    ControlStyle-Height="150px" 
                    ControlStyle-Width="150px"
                />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:DB_110695_carouselConnectionString %>"
            SelectCommand="SELECT [SermonAudioID], [ImageURL], [Title], [Speaker], [SermonDt], [AudioURL]
            FROM [SermonAudio] ORDER BY [SermonDt] DESC">
        </asp:SqlDataSource>
    </div>



</asp:Content>
