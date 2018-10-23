<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="testimonies.aspx.cs" Inherits="upc_website.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <style>
        .class1 {
    background-color: rgb(191, 217, 248);
    color: white;
    transition: .8s;
    cursor: pointer;
}

.class2 {
    background-color: rgb(165, 204, 250);
    color: rgb(94, 94, 97);
    transition: .8s;
}



div.mesage span {
    font-size: 2em;
    position: absolute;
    top: 3;
    left: -32;
}

.flex-container {
    padding: 5px;
    margin: 0;
    list-style: none;
    display: flex;
    flex-direction: column;
    justify-content: space-around;
}

.flex-item {
    background: #fbfbfc;
    padding: 15px;
    width: auto;
    height: 150px;
    margin: 3px;
    border-radius: .3em;
    border: 1px solid rgb(2, 3, 0);
    box-shadow: 4px 4px 3.5px 1px rgb(114, 114, 114);
    /* line-height: 20px; */
    color: #333;
    text-align: center;
    overflow: hidden;
}

.message {
    font-size: 1.2em;
    text-align: justify;
    line-height: 30px;
    margin: 10px 5px;
    text-indent: 1.5em;
    color: black;
    position: relative;
}

.title {
    font-size: 1.4em;
    font-weight: bold;
    font-style: italic;
    line-height: 1.8;
    text-transform: capitalize;
    color:RGB(88,88,88);
}

.sub-title{
    font-size:.6em;
    text-align:center;
    line-height:.8;
}
.show-text {
    height: auto;
    color: red;
    overflow: auto;
}

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <span class="glyphicons glyphicons-temple-christianity-church mypage-glythicons"></span>
    </div>

    <div class="mypage-header text-center">
        <h4><b>Web Testimonies</b></h4>
    </div>

    <div class="flex-container">
        <div class="flex-item">
            <div class="title">
                Holy, Holy, Holy Part 1
                <div class="sub-title">Bro. Clifford Hurst 09.08.2015</div>
            </div>
            <div class="message">My first impressions</div>
        </div>
    </div>







</asp:Content>
