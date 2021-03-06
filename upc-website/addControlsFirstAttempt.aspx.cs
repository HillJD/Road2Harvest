﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Web.UI.HtmlControls;

namespace upc_website
{
    public partial class addControlsFirst_Attempt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            






            StringBuilder sb = new StringBuilder();

            //this builds the carousel indicators
            ////sb.Append("<section class='section-white'>");
            sb.Append("<div id ='myCarousel' class='fade-carousel carousel slide' data-ride='carousel' data-interval='2000'>");
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
            sb.Append("</ol>");
            Literal1.Text = sb.ToString();
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
            sb.Append("<img src='images/1_4.jpg'>");
            sb.Append('\n');
            sb.Append("</div>");
            sb.Append("\n\n");
            //slide 2
            sb.Append("<div class='item'>");
            sb.Append('\n');
            sb.Append("<img src='images/2_4.jpg'>");
            sb.Append('\n');
            sb.Append("</div>");
            sb.Append("\n\n");
            //slide 3
            sb.Append("<div class='item'>");
            sb.Append('\n');
            sb.Append("<img src='images/3_4.jpg'>");
            sb.Append('\n');
            sb.Append("</div>");
            sb.Append("\n");
            sb.Append("</div>");
            sb.Append("\n\n");
            Literal2.Text = sb.ToString();
            sb.Clear();

            // //this builds left & right controls
            //left control
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
            sb.Append("</div>");
            //sb.Append("</div>");
            //sb.Append("</section>");
            Literal3.Text = sb.ToString();
            sb.Clear();

            HtmlGenericControl tabs = new HtmlGenericControl("ul");
            tabs.ID = "myTopnav";
            tabs.Attributes.Add("class", "topnav");

            HtmlGenericControl li = new HtmlGenericControl("li");
            HtmlGenericControl ianchor = new HtmlGenericControl("a");

            li = new HtmlGenericControl("li");
            ianchor = new HtmlGenericControl("a");
            ianchor.ID = "Home";
            ianchor.Attributes.Add("href", "#home");
            ianchor.Attributes.Add("class", "active");
            ianchor.InnerText = "Home";
            li.Controls.Add(ianchor);
            tabs.Controls.Add(li);


            li = new HtmlGenericControl("li");
            ianchor = new HtmlGenericControl("a");
            ianchor.ID = "News";
            ianchor.Attributes.Add("href", "#");
            ianchor.InnerText = "News";
            li.Controls.Add(ianchor);
            tabs.Controls.Add(li);
            
            //Add to PlaceHolder Control on .aspx
            ControlContainer.Controls.Add(tabs);

            //This generates a Div within a Div, first Div #1
            System.Web.UI.HtmlControls.HtmlGenericControl
            createDiv = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            createDiv.ID = "createDiv";
            //createDiv.InnerHtml = " I'm a div, from code behind ";
            this.Controls.Add(createDiv);

            //Then Div 2
            System.Web.UI.HtmlControls.HtmlGenericControl
            createDiv2 = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            createDiv2.ID = "createDiv2";
            createDiv2.InnerHtml = " I'm a div2, from code behind ";
            //Add Div 2 inside of Div1
            createDiv.Controls.Add(createDiv2);

            System.Web.UI.HtmlControls.HtmlGenericControl
            createDiv3 = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            createDiv3.ID = "createDiv3";
            createDiv3.InnerHtml = " I'm a div3, from code behind ";
            createDiv3.Attributes.Add("class", "Main");
            //Add this info below to inner div this way
            createDiv3.Attributes.Add("role","listbox");
            createDiv3.Attributes.Add("data-slide-to", "1");
            createDiv.Controls.Add(createDiv3);









        }
    }
}