<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="upc_website.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <video  id='vid' width="1920" height="1024">
       <source src="/images/carousel/test_video.mp4" type="video/mp4" />
   </video>
</body

    <script>
        jquery(document).ready(function)() {
            JQuery(window).scroll(function) {
                var windowScrollPosTop = JQuery(window).scrollTop();
                JQuery('.status').html(windowScrollPosTop);

            })

    </script>

</html>
