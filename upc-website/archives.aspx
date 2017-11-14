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
<table class="table" style="width:100%">
  <tr>
    <td style="text-align:right">Search Title:</td>
    <td><asp:TextBox ID="txtFind01" runat="server"></asp:TextBox><br /></td>
  </tr>
  <tr>
    <td style="text-align:right">Speaker:</td>
    <td><asp:TextBox ID="txtFind02" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td></td>
    <td><input type="submit" id="Submit1" runat="server" /></td>
  </tr>
</table>
    <div class="table-responsive">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="SermonAudioID" ShowHeader="False" DataSourceID="SqlDataSource1" SkinID="UPC_GV1">
            <Columns>
                <asp:ImageField
                    DataImageUrlField="ImageURL" 
                    ControlStyle-Height="84px" 
                    ControlStyle-Width="146px"
                />
                
                <asp:TemplateField SortExpression="Title">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"
                            Text='<%# Bind("Title") %>'></asp:TextBox>
                    </EditItemTemplate> 
                    <ItemTemplate>
                        <h3><strong><asp:Label ID="Label1" runat="server"
                            class="text-left"
                            Font-Name="Montserrat"
                            ForeColor="Black"
                            Text='<%# Bind("Title") %>'></asp:Label></strong></h3>
                        <p><asp:Label ID="Label2" runat="server"
                            class="text-left small"
                            Font-Name="Montserrat"
                            Text='<%# Eval("Speaker") %>'></asp:Label>
                        <asp:Label ID="Label3" runat="server"
                            class="text-left small"
                            Font-Name="Montserrat"
                            Text='<%# String.Format("{0:MM/dd/yy}", Eval("SermonDt")) %>'>
                        </asp:Label></p>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:HyperLinkField
                    Text="<i aria-hidden='true' class='glyphicons glyphicons-play'></i>"
                    HeaderText=""
                    DataNavigateUrlFields="AudioURL" />
            </Columns>
            <PagerStyle HorizontalAlign = "Center" CssClass = "GridPager" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:DB_110695_carouselConnectionString %>"
            SelectCommand="SELECT [SermonAudioID], [ImageURL], [Title], [Speaker], [SermonDt], [AudioURL]
            FROM [SermonAudio] ORDER BY [SermonDt] DESC"
            FilterExpression="[Title] LIKE '%{0}%' AND [Speaker] LIKE '%{1}%'">

                    <FilterParameters>
                        <asp:ControlParameter Name="Title" 
                            ControlID="txtFind01" PropertyName="Text" ConvertEmptyStringToNull="false"/>
                        <asp:ControlParameter Name="Speaker" 
                            ControlID="txtFind02" PropertyName="Text" ConvertEmptyStringToNull="false"/>
                    </FilterParameters>
        </asp:SqlDataSource>
    

    </div>


</asp:Content>
