﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace upc_website
{
    public partial class addcarousel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // //this builds the carousel indicators
            StringBuilder sb = new StringBuilder();
            sb.Append("<div id ='myCarousel' class='carousel carousel slide' data-ride='carousel'>");
            sb.Append('\n');
            sb.Append(" <!-- Indicators -->");
            sb.Append('\n');
            sb.Append("<ol class='carousel-indicators'>");
            sb.Append('\n');
            sb.Append("<li data-target='#myCarousel' data-slide-to='0' class='active'></li>");
            sb.Append('\n');
            sb.Append("<li data-target='#myCarousel' data-slide-to='1'></li>");
            sb.Append('\n');
            sb.Append("<li data-target='#myCarousel' data-slide-to='2'></li>");
            sb.Append('\n');
            sb.Append("</o>");
          
            sb.Clear();

            //this builds the wrapper for the slides
            //slide 1
            sb.Append('\n');
            sb.Append("<!-- Wrapper for slides -->");
            sb.Append('\n');
            sb.Append("<div class='carousel-inner' role='listbox'>");
            sb.Append('\n');
            sb.Append("<div class='item active'>");
            sb.Append('\n');
            sb.Append("<img src='images/0.jpg'>");
            sb.Append('\n');
            sb.Append("</div>");
            sb.Append("\n\n");
            //slide 2
            sb.Append("<div class='item'>");
            sb.Append('\n');
            sb.Append("<img src='images/1.jpg'>");
            sb.Append('\n');
            sb.Append("</div>");
            sb.Append("\n\n");
            //slide 3
            sb.Append("<div class='item'>");
            sb.Append('\n');
            sb.Append("<img src='images/2.jpg'>");
            sb.Append('\n');
            sb.Append("</div>");
            sb.Append("\n");
            sb.Append("</div>");
            sb.Append("\n\n");
            //Literal2.Text = sb.ToString();
            sb.Clear();

            // //this builds left & right controls
            // //left control
            sb.Append("<!-- Left and right controls -->");
            sb.Append("\n");
            sb.Append("<a class='left carousel-control' href='#myCarousel' role='button' data-slide='prev'>");
            sb.Append("\n");
            sb.Append("<span class='glyphicon glyphicon-chevron-left' aria-hidden='true'></span>");
            sb.Append("\n");
            sb.Append("<span class='sr-only'>Previous</span>");
            sb.Append("\n");
            sb.Append("</a>");
            sb.Append("\n\n");

            //right control
            sb.Append("<a class='right carousel-control' href='#myCarousel' role='button' data-slide='next'>");
            sb.Append("\n");
            sb.Append("<span class='glyphicon glyphicon-chevron-right' aria-hidden='true'></span>");
            sb.Append("\n");
            sb.Append("<span class='sr-only'>Next</span>");
            sb.Append("\n");
            sb.Append("</a>");
            sb.Append("\n");
            //Literal3.Text = sb.ToString();
        }
    }
}