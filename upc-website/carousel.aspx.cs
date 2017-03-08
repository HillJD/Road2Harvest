using System;
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

            






            //StringBuilder sb = new StringBuilder();

            ////this builds the carousel indicators
            //////sb.Append("<section class='section-white'>");
            //sb.Append("<div id ='myCarousel' class='fade-carousel carousel slide' data-ride='carousel' data-interval='2000'>");
            //sb.Append('\n');
            //sb.Append(" <!-- Indicators -->");
            //sb.Append('\n');
            //sb.Append("<ol class='carousel-indicators'>");
            //sb.Append('\n');
            //sb.Append("<li data-target='#myCarousel' data-slide-to='0' class='active'></li>");
            //sb.Append('\n');
            //sb.Append("<li data-target='#myCarousel' data-slide-to='1'></li>");
            //sb.Append('\n');
            //sb.Append("<li data-target='#myCarousel' data-slide-to='2'></li>");
            //sb.Append('\n');
            //sb.Append("</ol>");
            //Literal1.Text = sb.ToString();
            //sb.Clear();

            ////this builds the wrapper for the slides
            ////slide 1
            //sb.Append('\n');
            //sb.Append("<!-- Wrapper for slides -->");
            //sb.Append('\n');
            //sb.Append("<div class='carousel-inner' role='listbox'>");
            //sb.Append('\n');
            //sb.Append("<div class='item active'>");
            //sb.Append('\n');
            //sb.Append("<img src='images/1_4.jpg'>");
            //sb.Append('\n');
            //sb.Append("</div>");
            //sb.Append("\n\n");
            ////slide 2
            //sb.Append("<div class='item'>");
            //sb.Append('\n');
            //sb.Append("<img src='images/2_4.jpg'>");
            //sb.Append('\n');
            //sb.Append("</div>");
            //sb.Append("\n\n");
            ////slide 3
            //sb.Append("<div class='item'>");
            //sb.Append('\n');
            //sb.Append("<img src='images/3_4.jpg'>");
            //sb.Append('\n');
            //sb.Append("</div>");
            //sb.Append("\n");
            //sb.Append("</div>");
            //sb.Append("\n\n");
            //Literal2.Text = sb.ToString();
            //sb.Clear();

            //// //this builds left & right controls
            ////left control
            //sb.Append("<!-- Left and right controls -->");
            //sb.Append("\n");
            //sb.Append("<a class='left carousel-control' href='#myCarousel' role='button' data-slide='prev'>");
            //sb.Append("\n");
            //sb.Append("<span class='glyphicon glyphicon-chevron-left' aria-hidden='true'></span>");
            //sb.Append("\n");
            //sb.Append("<span class='sr-only'>Previous</span>");
            //sb.Append("\n");
            //sb.Append("</a>");
            //sb.Append("\n\n");

            ////right control
            //sb.Append("<a class='right carousel-control' href='#myCarousel' role='button' data-slide='next'>");
            //sb.Append("\n");
            //sb.Append("<span class='glyphicon glyphicon-chevron-right' aria-hidden='true'></span>");
            //sb.Append("\n");
            //sb.Append("<span class='sr-only'>Next</span>");
            //sb.Append("\n");
            //sb.Append("</a>");
            //sb.Append("\n");
            //sb.Append("</div>");
            ////sb.Append("</div>");
            ////sb.Append("</section>");
            //Literal3.Text = sb.ToString();
            //sb.Clear();

            //HtmlGenericControl tabs = new HtmlGenericControl("ul");
            //tabs.ID = "myTopnav";
            //tabs.Attributes.Add("class", "topnav");

            //HtmlGenericControl li = new HtmlGenericControl("li");
            //HtmlGenericControl ianchor = new HtmlGenericControl("a");

            //li = new HtmlGenericControl("li");
            //ianchor = new HtmlGenericControl("a");
            //ianchor.ID = "Home";
            //ianchor.Attributes.Add("href", "#home");
            //ianchor.Attributes.Add("class", "active");
            //ianchor.InnerText = "Home";
            //li.Controls.Add(ianchor);
            //tabs.Controls.Add(li);


            //li = new HtmlGenericControl("li");
            //ianchor = new HtmlGenericControl("a");
            //ianchor.ID = "News";
            //ianchor.Attributes.Add("href", "#");
            //ianchor.InnerText = "News";
            //li.Controls.Add(ianchor);
            //tabs.Controls.Add(li);

            ////Add to PlaceHolder Control on .aspx 
            //ControlContainer.Controls.Add(tabs);

            ////This generates a Div within a Div, first Div #1
            //System.Web.UI.HtmlControls.HtmlGenericControl
            //createDiv = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            //createDiv.ID = "createDiv";
            ////createDiv.InnerHtml = " I'm a div, from code behind ";
            //this.Controls.Add(createDiv);

            ////Then Div 2
            //System.Web.UI.HtmlControls.HtmlGenericControl
            //createDiv2 = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            //createDiv2.ID = "createDiv2";
            //createDiv2.InnerHtml = " I'm a div2, from code behind ";
            ////Add Div 2 inside of Div1
            //createDiv.Controls.Add(createDiv2);

            //System.Web.UI.HtmlControls.HtmlGenericControl
            //createDiv3 = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            //createDiv3.ID = "createDiv3";
            //createDiv3.InnerHtml = " I'm a div3, from code behind ";
            //createDiv3.Attributes.Add("class", "Main");
            ////Add this info below to inner div this way
            //createDiv3.Attributes.Add("role","listbox");
            //createDiv3.Attributes.Add("data-slide-to", "1");
            //createDiv.Controls.Add(createDiv3);

            //This generates the Carousel main div
            //Add to PlaceHolder ControlContainer on .aspx, main container for Carousel
            System.Web.UI.HtmlControls.HtmlGenericControl
            myCarousel= new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            myCarousel.ID = "myCarousel";
            myCarousel.Attributes.Add("class", "fade-carousel carousel slide");
            myCarousel.Attributes.Add("data-interval", "2000");
            ControlContainer.Controls.Add(myCarousel);
            
            //******* carousel indicators ************************
            //Create ordered list 'ol' with 'li' elements
            System.Web.UI.HtmlControls.HtmlGenericControl
            ol = new System.Web.UI.HtmlControls.HtmlGenericControl("ol");
            ol.Attributes.Add("class", "carousel-indicators");

            //Now add  #1 of 3 'li' elements
            System.Web.UI.HtmlControls.HtmlGenericControl
            li_1 = new System.Web.UI.HtmlControls.HtmlGenericControl("li");
            li_1.Attributes.Add("data-target", "#myCarousel");
            li_1.Attributes.Add("data-slide-to", "0");
            li_1.Attributes.Add("class", "active");
            ol.Controls.Add(li_1);

            //Now add  #2 of 3 'li' elements
            System.Web.UI.HtmlControls.HtmlGenericControl
            li_2 = new System.Web.UI.HtmlControls.HtmlGenericControl("li");
            li_2.Attributes.Add("data-target", "#myCarousel");
            li_2.Attributes.Add("data-slide-to", "1");
            ol.Controls.Add(li_2);

            //Now add  #3 of 3 'li' elements
            System.Web.UI.HtmlControls.HtmlGenericControl
            li_3 = new System.Web.UI.HtmlControls.HtmlGenericControl("li");
            li_3.Attributes.Add("data-target", "#myCarousel");
            li_3.Attributes.Add("data-slide-to", "2");
            //Add 'li' to 'ol'
            ol.Controls.Add(li_3);

            //Add 'ol' with inside 'li's's  to Div Carousel
            myCarousel.Controls.Add(ol);
            //****** carousel indicators end *********************

            //This generates the Wrapper div
            System.Web.UI.HtmlControls.HtmlGenericControl
            Wrapper = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            Wrapper.Attributes.Add("class", "carousel-inner");
            Wrapper.Attributes.Add("role", "listbox");

            //This generates the image wrapper div's #1 inside of Wrapper div
            //Class='active' only on first div!
            System.Web.UI.HtmlControls.HtmlGenericControl
            imageDiv1 = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            imageDiv1.Attributes.Add("class", "item active");
            
            //This generates 'image' #1 container for pics in image divs
            System.Web.UI.HtmlControls.HtmlGenericControl
            image1 = new System.Web.UI.HtmlControls.HtmlGenericControl("IMG");
            image1.Attributes.Add("src", "images/1_4.jpg");
            imageDiv1.Controls.Add(image1);
            Wrapper.Controls.Add(imageDiv1);

            //This generates the image wrapper div's #2 inside of Wrapper div
            //Class='active' only on first div!
            System.Web.UI.HtmlControls.HtmlGenericControl
            imageDiv2 = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            imageDiv2.Attributes.Add("class", "item");

            //This generates 'image' #2 container for pics in image divs
            System.Web.UI.HtmlControls.HtmlGenericControl
            image2 = new System.Web.UI.HtmlControls.HtmlGenericControl("IMG");
            image2.Attributes.Add("src", "images/2_4.jpg");
            imageDiv2.Controls.Add(image2);
            Wrapper.Controls.Add(imageDiv2);

            //This generates the image wrapper div's #3 inside of Wrapper div
            //Class='active' only on first div!
            System.Web.UI.HtmlControls.HtmlGenericControl
            imageDiv3 = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            imageDiv3.Attributes.Add("class", "item");

            //This generates 'image' #3 container for pics in image divs
            System.Web.UI.HtmlControls.HtmlGenericControl
            image3 = new System.Web.UI.HtmlControls.HtmlGenericControl("IMG");
            image3.Attributes.Add("src", "images/3_4.jpg");
            imageDiv3.Controls.Add(image3);
            Wrapper.Controls.Add(imageDiv3);

            //Add this Wrapper to Carousel div
            myCarousel.Controls.Add(Wrapper);

            //***** Left Carousel control, 'A' ******
            System.Web.UI.HtmlControls.HtmlGenericControl
            aLeftCtrl = new System.Web.UI.HtmlControls.HtmlGenericControl("A");
            aLeftCtrl.Attributes.Add("class", "left carousel-control");
            aLeftCtrl.Attributes.Add("href", "#myCarousel");
            aLeftCtrl.Attributes.Add("role","button");
            aLeftCtrl.Attributes.Add("data-slide", "prev");

            //Left Carousel control, 'Span' there are 2 for each control
            System.Web.UI.HtmlControls.HtmlGenericControl
            spanLeftCtrl_1 = new System.Web.UI.HtmlControls.HtmlGenericControl("SPAN");
            spanLeftCtrl_1.Attributes.Add("class", "glyphicon glyphicon-chevron-left");
            spanLeftCtrl_1.Attributes.Add("aria-hidden", "true");
            //Add span control to 'A'
            aLeftCtrl.Controls.Add(spanLeftCtrl_1);

            //2 span sper carousel control
            System.Web.UI.HtmlControls.HtmlGenericControl
            spanLeftCtrl_2 = new System.Web.UI.HtmlControls.HtmlGenericControl("SPAN");
            spanLeftCtrl_2.Attributes.Add("class", "sr-only");
            spanLeftCtrl_2.InnerText = "Previous";
            
            //Add span control to 'A'
            aLeftCtrl.Controls.Add(spanLeftCtrl_2);
            
            //Add aleftCtrl to wrapper div
            Wrapper.Controls.Add(aLeftCtrl);
            //***** Left Carousel control, end ******

            //***** Right Carousel control, 'A' *****
            System.Web.UI.HtmlControls.HtmlGenericControl
            aRightCtrl = new System.Web.UI.HtmlControls.HtmlGenericControl("A");
            aRightCtrl.Attributes.Add("class", "right carousel-control");
            aRightCtrl.Attributes.Add("href", "#myCarousel");
            aRightCtrl.Attributes.Add("role", "button");
            aRightCtrl.Attributes.Add("data-slide", "next");

            //Right Carousel control, 'Span' there are 2 for each control
            System.Web.UI.HtmlControls.HtmlGenericControl
            spanRightCtrl_1 = new System.Web.UI.HtmlControls.HtmlGenericControl("SPAN");
            spanRightCtrl_1.Attributes.Add("class", "glyphicon glyphicon-chevron-right");
            spanRightCtrl_1.Attributes.Add("aria-hidden", "true");
            
            //Add span control to 'A'
            aRightCtrl.Controls.Add(spanRightCtrl_1);

            //2 span sper carousel control
            System.Web.UI.HtmlControls.HtmlGenericControl
            spanRightCtrl_2 = new System.Web.UI.HtmlControls.HtmlGenericControl("SPAN");
            spanRightCtrl_2.Attributes.Add("class", "sr-only");
            spanRightCtrl_2.InnerText = "Next";
            
            //Add span control to 'A'
            aRightCtrl.Controls.Add(spanLeftCtrl_2);
            
            //Add aRightCtrl to wrapper div
            Wrapper.Controls.Add(aRightCtrl);
            Wrapper.Controls.Add(aRightCtrl);
            //***** Right Carousel control, end *****





















        }
    }
}