<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="testimonies.aspx.cs" Inherits="upc_website.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <style>
        .cards {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            flex-direction: rows;
            /* max-height: 80%; */
        }

            .cards img {
                margin: 5px;
                border: 3px solid #000;
                box-shadow: 3px 3px 8px 0px rgba(0,0,0,0.3);
                max-width: 95%;
            }

        p {
            font-family: montserrat;
            text-indent: 1em;
            font-weight: 900;
            text-align: left;
            font-size: 1.5em;
            line-height: 1.5em;
            margin: 10px;
        }

        image {
            width: 30%;
            height: auto;
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

    <main class="cards">
        <p>
            We thank God for all the testimonies we have received from those that have
                 benefited from our ministry at Union Pentecostal Church
        </p>
        <p>
            We are striving through our fund raiser to buy a video camera
                 and related support equipment.
        </p>
        <p>
            This will allow us to video stream our services live, as well as provide
                 an archived video sermon vault
        </p>
        <p>
            If you desire to help us in this evangelistic outreach, click the
                     easyTithe link provided and choose "Digital Ministries"
                     in the 'To' dropdown field to give to this mission.
        </p>
        <a href="give.aspx">
            <img src="images/digital-ministries/easy-tithe%20cropped.png" /></a>
        <br />

        <img src="images/digital-ministries/digital%20ministries%20testimonies%20page%201.jpg" alt="testimony" />
        <img src="images/digital-ministries/digital%20ministries%20testimonies%20page%202.jpg" alt="testimony">
        <img src="images/digital-ministries/digital%20ministries%20testimonies%20page%203.jpg" alt="testimony">
        <img src="images/digital-ministries/digital%20ministries%20testimonies%20page%204.jpg" alt="testimony">
        <img src="images/digital-ministries/digital%20ministries%20testimonies%20page%205.jpg" alt="testimony">
        <img src="images/digital-ministries/digital%20ministries%20testimonies%20page%206.jpg" alt="testimony">
        <img src="images/digital-ministries/digital%20ministries%20testimonies%20page%207.jpg" alt="testimony">
        <img src="images/digital-ministries/digital%20ministries%20testimonies%20page%208.jpg" alt="testimony">
        <img src="images/digital-ministries/digital%20ministries%20testimonies%20page%209.jpg" alt="testimony">
        <img src="images/digital-ministries/digital%20ministries%20testimonies%20page%210.jpg" alt="testimony">
        <img src="images/digital-ministries/digital%20ministries%20testimonies%20page%2011.jpg" alt="testimony">
        <img src="images/digital-ministries/digital%20ministries%20testimonies%20page%2012.jpg" alt="testimony">
        <img src="images/digital-ministries/digital%20ministries%20testimonies%20page%2013.jpg" alt="testimony">
        <img src="images/digital-ministries/digital%20ministries%20testimonies%20page%2014.jpg" alt="testimony">
        <img src="images/digital-ministries/digital%20ministries%20testimonies%20page%2015.jpg" alt="testimony">
        <img src="images/digital-ministries/digital%20ministries%20testimonies%20page%2016.jpg" alt="testimony">
    </main>







</asp:Content>
