<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pastor-desk-new.aspx.cs" Inherits="upc_website.pastor_desk_new" %>
<asp:Content ID="Head" ContentPlaceHolderID="headContent" runat="server">
<%--<script>
    function __doPostBack(eventTarget, eventArgument) {
        alert('Mike');
        document.Form1.__EVENTTARGET.value = eventTarget;
        document.Form1.__EVENTARGUMENT.value = eventArgument;
        console.debug('line 4');
        document.Form1.submit();
    }
</script>--%>
    <style>
        .myLink {
            padding:0px 9px;
            border:#969696 solid 1px;
            margin-bottom:.5em;
            color:#969696;
            margin-right:.4px;
            font-size:.875em;
            font-weight:bold;
            border-radius:3px;
            background-color:#f5f5f5;
            box-shadow: inset 0px 1px 0px rgba(255,255,255, .8), 0px 1px 3px rgba(0,0,0, .1);
            text-shadow: 0px 1px 0px rgba(255,255,255, 1);
        }

        button {padding-right:1em;}

        .flex {
            display:flex;
            justify-content:flex-start;
        }

        .label1 {
            padding:0px 9px;
            /*border:#555 solid thin;*/
            /*border:hidden;*/
            margin-bottom:.5em;
            margin-right:.5em;
            color:black;
            font-size:.875em;
            /*border-radius:3px;*/
        }

        #textInfo {width:900px;}

        
    </style>

</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <span class="glyphicons glyphicons-temple-christianity-church mypage-glythicons"></span>
    </div>
    <div class="mypage-header text-center">
        <h4><b>Pastor's Desk</b></h4>
        <asp:TextBox runat="server" ID="textInfo" Width="300"></asp:TextBox>
    </div>
    <asp:PlaceHolder ID="ControlContainer" runat="server">
        <div class="flex">
            <a id="Button1" class="myLink" href="javascript:__doPostBack('0')">...</a>

            <a id="Button2" class="myLink" href="javascript:__doPostBack('10')">2</a>

            <a id="Button3" class="myLink" href="javascript:__doPostBack('30')">3</a>

            <a id="Button4" class="myLink" href="javascript:__doPostBack('40')">4</a>

            <a id="Button5" class="myLink" href="javascript:__doPostBack('50')">...</a>

            <asp:Label ID="label1" class="label1" runat="server"></asp:Label>
        </div>

    </asp:PlaceHolder>
     
    
    <script>
        $(document).ready(function () {
            //alert("jquery");
                $(".flex-item").click(function () {
                $(this).toggleClass("show-text");
                //$(this).find(".message").toggleClass("class2");
            });
        })
         </script>
</asp:Content>