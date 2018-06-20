<%@ Page Title="" Language="C#" StyleSheetTheme="UPC_Skins" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="archives.aspx.cs" Inherits="upc_website.archives" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
<style>
.mGrid { 
    
    background-color: #fff; 
    /*margin: 5px 0 10px 0; */
    border: solid 1px #525252; 
    border-collapse:collapse; 
    border-spacing: 0px;
    border-color: black;
    
}

/*.mGrid table {
    display: table;
    border-collapse: separate;
    border-spacing: 0px;
    border-color: red;
}*/

.mGrid td { 
    /*padding: 0px; 
    border: solid 1px #c1c1c1; */
    color: #717171; 
    text-align:left;
    background-color:white;
}

.mGrid .pgr td { 
    border-width: 0; 
    padding: 0 6px; 
    border-left: solid 1px #666; 
    font-weight: bold; 
    color:black; 
    line-height: 12px; 
 }   
.mGrid .pgr a { color: #f00; text-decoration: none; }
.mGrid .pgr a:hover { color: #000; text-decoration: none; }
.textColor {color:red}
.textAlign {padding-left:10px}

.mGrid h5, .h5 {
    font-size: 14px;
    height: 16px;
    /*width: 169px;*/
    margin-left: 3px; 
    margin-right: 41px;
}

.mGrid p {
    margin: 0 4px 25px;
}

    .auto-style1 {
        width: 388px;
    }

</style>
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
    <td class="auto-style1"><asp:TextBox ID="txtFind01" runat="server"></asp:TextBox><br /></td>
    <td>
        <asp:DropDownList ID="DLSeries" runat="server" DataSourceID="SqlDatSeries" DataTextField="SeriesName" DataValueField="SeriesID" AppendDataBoundItems="true">
            <Items>
                <asp:ListItem Text="Select" Value="" />
            </Items>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDatSeries" runat="server" ConnectionString="<%$ ConnectionStrings:DB_110695_carouselConnectionString %>" SelectCommand="SELECT * FROM dbo.Series WHERE SeriesName <> '' AND SeriesID IN (SELECT SeriesID FROM [SermonAudio] WHERE [InArchive] = 'True' AND SeriesID <> 49) ORDER BY SeriesID DESC;"></asp:SqlDataSource>
      </td>
  </tr>
  <tr>
    <td style="text-align:right">Speaker:</td>
    <td class="auto-style1"><asp:TextBox ID="txtFind02" runat="server"></asp:TextBox></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td class="auto-style1"><input type="submit" id="Submit1" runat="server" /></td>
    <td>
        <asp:Button ID="Button01" runat="server" Text="Clear All" OnClick="Button01_Click" /></td>
  </tr>
</table>

    <div class="table-responsive">
        <asp:GridView ID="GridView1" runat="server" PagerStyle-CssClass="pgr" CssClass="mGrid" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="SermonAudioID" ShowHeader="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:ImageField
                    DataImageUrlField="ImageURL" 
                    ControlStyle-Height="81px" 
                    ControlStyle-Width="139px"
                />
                
                <asp:TemplateField SortExpression="Title">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"
                            Text='<%# Bind("Title") %>'></asp:TextBox>
                    </EditItemTemplate> 
                    <ItemTemplate>
                        <h5><strong>
                                <asp:HyperLink id="HL1" runat="server" NavigateUrl='<%# GetUrl(Eval("AudioURL"))%>'
                                    Text='<%# Eval("Title") %>' >
                                </asp:HyperLink>
                            </strong></h5>
                        <p><asp:Label ID="Label2" runat="server"
                            Font-Name="Montserrat"
                            Text='<%# Eval("Speaker") %>'></asp:Label>
                        <asp:Label ID="Label3" runat="server"
                            Font-Name="Montserrat"
                            Text='<%# String.Format("{0:MM/dd/yy}", Eval("SermonDt")) %>'>
                        </asp:Label></p>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle HorizontalAlign = "Center" CssClass = "GridPager" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:DB_110695_carouselConnectionString %>"
            SelectCommand="SELECT [SermonAudioID], [ImageURL], [Title], [Speaker], [SermonDt], [AudioURL]
            FROM [SermonAudio] WHERE [InArchive] = 'True' ORDER BY [SermonDt] DESC, [SermonAMPM] DESC"
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
