<%@ Page Title="" Language="C#" StyleSheetTheme="UPC_Skins" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="archives.aspx.cs" Inherits="upc_website.archives" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
    <span class="glyphicons glyphicons-headphones mypage-glythicons"></span>
</div>
<div class="mypage-header text-center">
    <h4><b>Sermon Archives</b></h4>
</div>



    <div class="table-responsive">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="SermonAudioID" DataSourceID="SqlDataSource1" SkinID="UPC_GV1">
            <Columns>
                <asp:ImageField HeaderText="Title Slide"
                    DataImageUrlField="ImageURL" 
                    ControlStyle-Height="86px" 
                    ControlStyle-Width="150px"
                />
                
                <asp:TemplateField HeaderText="Sermon" SortExpression="Title">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"
                            Text='<%# Bind("Title") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <h3><strong><asp:Label ID="Label1" runat="server"
                            class="text-left small"
                            Text='<%# Bind("Title") %>'></asp:Label></strong></h3>
                        <asp:Label ID="Label2" runat="server"
                            class="text-left small"
                            Text='<%# Eval("Speaker") %>'></asp:Label>
                        <asp:Label ID="Label3" runat="server"
                            class="text-left small"
                            Text='<%# String.Format("{0:MM/dd/yy}", Eval("SermonDt")) %>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:HyperLinkField
                    Text="<i aria-hidden='true' class='glyphicons glyphicons-play'></i>"
                    HeaderText=""
                    DataNavigateUrlFields="AudioURL" />
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
