<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buildcontrol.aspx.cs" Inherits="upc_website.buildcontrol" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<title>HtmlInputCheckBox Control</title>

    <script runat="server">
        void Button1_Click(object Source, EventArgs e)
        {
            if (Check1.Checked == true)
            {
                Span1.InnerHtml = "Check1 is checked!";
            }
            else
            {
                Span1.InnerHtml = "Check1 is not checked!";
            }
        }
    </script>

</head>
<body>

    <h3>HtmlInputCheckBox Sample</h3>

    <form id="Form1" runat="server">
        <input id="Check1" type="checkbox" runat="server" checked="checked"/> 
            CheckBox1 &nbsp;&nbsp;
        <span id="Span1" style="color:red" runat="server" />
        <br />
        <input type="button" id="Button1" value="Enter"
               onserverclick="Button1_Click" runat="server"/>
    </form>
</body>
</html>