<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacebookSync.aspx.cs" Inherits="upc_website.Account.FacebookSync" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="FB_Login" runat="server" OnClick="FB_Login_Click" Text="Login with Facebook" />
        <br />
        <br />
    
        <asp:Button ID="FB_Post" runat="server" OnClick="Button1_Click" Text="Post Link to my Facebook" />
    
    </div>
    </form>
</body>
</html>
