<%@ Page Title="" Language="C#" StylesheetTheme="UPC_Skins" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="archives.aspx.cs" Inherits="upc_website.archives" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <style>
        .mGrid {
            background-color: #fff;
            /*margin: 5px 0 10px 0; */
            border: solid 1px #525252;
            border-collapse: collapse;
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
                text-align: left;
                background-color: white;
            }

            .mGrid .pgr td {
                border-width: 0;
                padding: 0 6px;
                border-left: solid 1px #666;
                font-weight: bold;
                color: black;
                line-height: 12px;
            }

            .mGrid .pgr a {
                color: #f00;
                text-decoration: none;
            }

                .mGrid .pgr a:hover {
                    color: #000;
                    text-decoration: none;
                }

        .textColor {
            color: red
        }

        .textAlign {
            padding-left: 10px
        }

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

        /*.panel {text-align:center;}*/

        /* Flex from here */
        .form-row {
            display: flex;
            padding: 10px 0;
        }

        .form-row-label {
            padding-right: 10px;
        }

        .form-row-input {
            flex: 1;
        }

        .form-submit {
            margin-left: 10px;
            margin-bottom: 10px;
        }

        .panel-title > a, .panel-title > small, .panel-title > .small,
        .panel-title > small > a, .panel-title > .small > a {
            text-align: center;
        }

        @media screen and (min-width: 768px) {
            .form-row {
                display: flex;
                padding: 10px 0;
                width: 75%;
            }
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

    <div class="jumbotronSK text-left">

        <div class="panel-group" id="accordion00">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a class="myLinks" data-toggle="collapse" data-parent="#accordion00" href="#collapse00">Click to Search</a>
                    </h4>
                </div>
                <div id="collapse00" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="panel-group" id="accordion01">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="myLinks" data-toggle="collapse" data-parent="#accordion01" href="#collapse01">Title / Speaker</a>
                                    </h4>
                                </div>
                                <div id="collapse01" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="form-row">
                                            <asp:Label ID="label1" class="form-row-label" AssociatedControlID="txtFind01" Text="Title" runat="server"></asp:Label>
                                            <asp:TextBox ID="txtFind01" class="form-row-input" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-row">
                                            <asp:Label ID="label2" class="form-row-label" AssociatedControlID="txtFind02" Text="Speaker" runat="server"></asp:Label>
                                            <asp:TextBox ID="txtFind02" class="form-row-input" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <asp:Button class="form-submit" runat="server" Text="Submit" OnClick="Button02_Click" />
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="panel-group" id="accordion02">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="myLinks" data-toggle="collapse" data-parent="#accordion02" href="#collapse02">Series</a>
                            </h4>
                        </div>
                        <div id="collapse02" class="panel-collapse collapse">
                            <div class="panel-body">
                                <asp:DropDownList ID="DLSeries" runat="server" DataSourceID="SqlDatSeries" DataTextField="SeriesName" DataValueField="SeriesID" AppendDataBoundItems="true">
                                    <Items>
                                        <asp:ListItem Text="Select" Value="" />
                                    </Items>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDatSeries" runat="server" ConnectionString="<%$ ConnectionStrings:DB_110695_carouselConnectionString %>" SelectCommand="SELECT * FROM dbo.Series WHERE SeriesName <> '' AND SeriesID IN (SELECT SeriesID FROM [SermonAudio] WHERE [InArchive] = 'True' AND SeriesID <> 49) ORDER BY SeriesID DESC;" OnSelecting="SqlDatSeries_Selecting"></asp:SqlDataSource>
                            </div>
                            <asp:Button ID="Button00" class="form-submit" runat="server" Text="Submit" OnClick="Button00_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:Button ID="Button01" runat="server" class="form-submit" Text="Clear Search" OnClick="Button01_Click" />
    </div>

    <div class="table-responsive">
        <asp:GridView ID="GridView1" runat="server" PagerStyle-CssClass="pgr" CssClass="mGrid" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="SermonAudioID" ShowHeader="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:ImageField
                    DataImageUrlField="ImageURL"
                    ControlStyle-Height="81px"
                    ControlStyle-Width="139px" />
                <asp:TemplateField SortExpression="Title">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"
                            Text='<%# Bind("Title") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <h5><strong>
                            <asp:HyperLink ID="HL1" runat="server" NavigateUrl='<%# GetUrl(Eval("AudioURL"))%>'
                                Text='<%# Eval("Title") %>'>
                            </asp:HyperLink>
                        </strong></h5>
                        <p>
                            <asp:Label ID="Label2" runat="server"
                                Font-Name="Montserrat"
                                Text='<%# Eval("Speaker") %>'></asp:Label>
                            <asp:Label ID="Label3" runat="server"
                                Font-Name="Montserrat"
                                Text='<%# String.Format("{0:MM/dd/yy}", Eval("SermonDt")) %>'>
                            </asp:Label>
                        </p>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle HorizontalAlign="Center" CssClass="GridPager" />
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:DB_110695_carouselConnectionString %>"
        SelectCommand="SELECT [SermonAudioID], [ImageURL], [Title], [Speaker], [SermonDt], [AudioURL]
            FROM [SermonAudio] WHERE [InArchive] = 'True' ORDER BY [SermonDt] DESC, [SermonAMPM] DESC"
        FilterExpression="[Title] LIKE '%{0}%' AND [Speaker] LIKE '%{1}%'">
        <FilterParameters>
            <asp:ControlParameter Name="Title"
                ControlID="txtFind01" PropertyName="Text" ConvertEmptyStringToNull="false" />
            <asp:ControlParameter Name="Speaker"
                ControlID="txtFind02" PropertyName="Text" ConvertEmptyStringToNull="false" />
        </FilterParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:DB_110695_carouselConnectionString %>"
        SelectCommand="SELECT [SermonAudioID], [ImageURL], [Title], [Speaker], [SermonDt], [AudioURL], [SeriesID]
            FROM [SermonAudio] WHERE [InArchive] = 'True' ORDER BY [SermonDt] DESC, [SermonAMPM] DESC"
        FilterExpression="SeriesID = '{0}'">
        <FilterParameters>
            <asp:ControlParameter Name="SeriesID"
                ControlID="DLSeries" PropertyName="SelectedValue" />
        </FilterParameters>
    </asp:SqlDataSource>
</asp:Content>
