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
                <asp:CommandField ShowSelectButton="True" selecttext="Play" />
                <asp:BoundField DataField="SermonAudioID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="SermonAudioID" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Speaker" HeaderText="Speaker" SortExpression="Speaker" />
                <asp:BoundField DataField="column1" HeaderText="Bk" SortExpression="column1" />
                <asp:BoundField DataField="column2" HeaderText="Ch" SortExpression="column2" />
                <asp:BoundField DataField="column3" HeaderText="Vs" SortExpression="column3" />
                <asp:BoundField DataField="column4" HeaderText="Ve" SortExpression="column4" />
                <asp:BoundField DataField="SermonDt" HeaderText="Date" SortExpression="SermonDt" dataformatstring="{0:MM/dd/yy}" />
                <asp:BoundField DataField="SermonAMPM" HeaderText=".." SortExpression="SermonAMPM" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:DB_110695_carouselConnectionString %>"
            SelectCommand="SELECT [SermonAudioID], [Title], [Speaker], [1Book] AS column1,
            [1Chapter] AS column2, [1VerseStart] AS column3, [1VerseEnd] AS column4,
            [SermonDt], [SermonAMPM]
            FROM [SermonAudio]
            ORDER BY [SermonDt] DESC">
        </asp:SqlDataSource>
    </div>



</asp:Content>
