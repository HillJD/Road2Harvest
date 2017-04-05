using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;

namespace upc_website
{
       public partial class addControlsFirst_Attempt : System.Web.UI.Page
    {
        //Must be visible to all below
        HtmlGenericControl myCarousel = new HtmlGenericControl("DIV");
        HtmlGenericControl ol = new HtmlGenericControl("ol");
        HtmlGenericControl Wrapper = new HtmlGenericControl("DIV");
        HtmlGenericControl ImageWrapper = new HtmlGenericControl("DIV");
        //HtmlGenericControl li_1 = new System.Web.UI.HtmlControls.HtmlGenericControl("li");

        protected void Page_Load(object sender, EventArgs e)
        {
            int SlidesToAdd = GetValues(); //i.e. # of pictures slides
            BuildmyCarouselDiv("4000");//Slide display time
            BuildCarouselOrderedList();
            BuildCarouselListItems(SlidesToAdd);
            BuildCarouselWrapperDiv();
            BuildCarouselImageWrapperDiv(SlidesToAdd);



        }
        public void BuildmyCarouselDiv(string slideDelay)
        {
            
            myCarousel.ID = "myCarousel";
            myCarousel.Attributes.Add("class", "fade-carousel carousel slide");
            myCarousel.Attributes.Add("data-ride", "carousel");
            myCarousel.Attributes.Add("data-interval", slideDelay);
            ControlContainer.Controls.Add(myCarousel);
        }

        public void BuildCarouselOrderedList()
        {
            //******* carousel indicators ************************
            //Create ordered list 'ol' for 'li' elements
            ol.Attributes.Add("class", "carousel-indicators");
            myCarousel.Controls.Add(ol); //temporary
            return;
        }

        public void BuildCarouselListItems(int requestedlistItems)
        {
            //Now add requested #'s of li' elements
            //Add HtmlGenericControl() to array 'p'
            //Each one for each slide
            HtmlGenericControl[] p = new HtmlGenericControl[requestedlistItems];
            for (int x = 0; x < requestedlistItems; x++)
            {
                p[x] = new HtmlGenericControl();
            }

            //For loop through each array 'p' & create new 'Li' items & assign properties
            for (int i = 0; i < requestedlistItems; i++)
            {
                p[i] = new HtmlGenericControl("li");
                p[i].Attributes.Add("data-target", "#MainContent_myCarousel");
                p[i].Attributes.Add("data-slide-to", i.ToString());
                if (i == 0) {p[i].Attributes.Add("class", "active");}
                ol.Controls.Add(p[i]);
            }
            return;
        }

        public void BuildCarouselWrapperDiv()
        {
            //This generates the Wrapper div
            
            Wrapper.Attributes.Add("class", "carousel-inner");
            Wrapper.Attributes.Add("role", "listbox");
            return;
        }
        public void BuildCarouselImageWrapperDiv(int slidesToBuild)
        {

            return;
        }

        public void BuildCarousel()
        {
        

            //Now add  #2 of 3 'li' elements
            System.Web.UI.HtmlControls.HtmlGenericControl
            li_2 = new System.Web.UI.HtmlControls.HtmlGenericControl("li");
            li_2.Attributes.Add("data-target", "#MainContent_myCarousel");
            li_2.Attributes.Add("data-slide-to", "1");
            ol.Controls.Add(li_2);

            //Now add  #3 of 3 'li' elements
            System.Web.UI.HtmlControls.HtmlGenericControl
            li_3 = new System.Web.UI.HtmlControls.HtmlGenericControl("li");
            li_3.Attributes.Add("data-target", "#MainContent_myCarousel");
            li_3.Attributes.Add("data-slide-to", "2");
            //Add 'li' to 'ol'
            ol.Controls.Add(li_3);

            //Add 'ol' with inside 'li's's  to Div Carousel
            myCarousel.Controls.Add(ol);
            //****** carousel indicators end *********************

            

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
            aLeftCtrl.Attributes.Add("href", "#MainContent_myCarousel");
            aLeftCtrl.Attributes.Add("role", "button");
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
            aRightCtrl.Attributes.Add("href", "#MainContent_myCarousel");
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
            aRightCtrl.Controls.Add(spanRightCtrl_2);

            //Add aRightCtrl to wrapper div
            Wrapper.Controls.Add(aRightCtrl);
            //Wrapper.Controls.Add(aRightCtrl); Added twice?
            //***** Right Carousel control, end *****
        }


        public int GetValues()
        {
            //install later a Try, Catch error routine
            //Setup data connection, get data fron sql table 'carousel_images
            SqlConnection cs = new SqlConnection("Data Source = (localdb)\\V11.0; Initial Catalog = upc; Integrated Security = True;");
            cs.Open();
            string str = "SELECT * ";
            str += " FROM carousel_images WHERE (beginDate <= {fn now() }) and (endDate >= {fn now() }) ORDER BY beginDate";

            SqlCommand command = new SqlCommand(str, cs);
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            return dt.Rows.Count;
            
        }
    }

}
