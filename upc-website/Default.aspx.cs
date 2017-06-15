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
    public partial class Carousel : System.Web.UI.Page
    {
        //Must be visible to all below
        HtmlGenericControl myCarousel = new HtmlGenericControl("DIV");
        HtmlGenericControl ol = new HtmlGenericControl("ol");
        HtmlGenericControl Wrapper = new HtmlGenericControl("DIV");
        HtmlGenericControl ImageWrapper = new HtmlGenericControl("DIV");
        HtmlGenericControl ImageContainer = new HtmlGenericControl("IMG");
        //HtmlGenericControl ImageContainer = new HtmlGenericControl("A");
        //HtmlGenericControl ImageContainer = new HtmlGenericControl("SPAN");
        //HtmlGenericControl li_1 = new System.Web.UI.HtmlControls.HtmlGenericControl("li");

        protected void Page_Load(object sender, EventArgs e)
        {
            int SlidesToAdd = GetRowCount(); //i.e. # of pictures slides to add
            BuildCarouselDiv("3000");//Slide display time
            BuildCarouselOrderedList();
            BuildCarouselListItems(SlidesToAdd);
            BuildCarouselWrapperDiv();
            BuildCarouselImageDiv(SlidesToAdd);
            BuildCarouselControls();

        }
        public void BuildCarouselDiv(string slideDelay)
        {
            myCarousel.ID = "myCarousel";
            myCarousel.Attributes.Add("class", "carousel slide carousel-fade");
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
            //One for each slide
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
                if (i == 0) { p[i].Attributes.Add("class", "active"); }
                ol.Controls.Add(p[i]);
            }
            return;
        }

        public void BuildCarouselWrapperDiv()
        {
            //This generates the Wrapper div            
            Wrapper.Attributes.Add("class", "carousel-inner");
            Wrapper.Attributes.Add("role", "listbox");
            myCarousel.Controls.Add(Wrapper);
            return;
        }

        public void BuildCarouselImageDiv(int slidesToBuild)
        {
            int index = 3;//This moves us through the array 

            //Get data fron db for items requested, return as List<>
            List<string> myData = GetCarouselImageData();

            //This builds the divs for images, put them in an array
            HtmlGenericControl[] myDiv = new HtmlGenericControl[slidesToBuild];
            for (int x = 0; x < slidesToBuild; x++)
            {
                myDiv[x] = new HtmlGenericControl();
            }

            //This builds the image element for images, put them in an array
            HtmlGenericControl[] myImage = new HtmlGenericControl[slidesToBuild];
            for (int x = 0; x < slidesToBuild; x++)
            {
                myImage[x] = new HtmlGenericControl();
            }

            for (int i = 0; i < slidesToBuild; i++)
            {
                myDiv[i] = new HtmlGenericControl("div");
                myImage[i] = new HtmlGenericControl("img");
                if (i == 0)
                {
                    myDiv[i].Attributes.Add("class", "item active");
                    myImage[i].Attributes.Add("src", myData[index * i].ToString());
                    //myImage[i].Attributes.Add("src", myData[(index * i) +1].ToString()); //Future captions
                    //myImage[i].Attributes.Add("src", myData[(index * i) +2].ToString());
                    myDiv[i].Controls.Add(myImage[i]);
                    Wrapper.Controls.Add(myDiv[i]);

                }
                else
                {
                    myDiv[i].Attributes.Add("class", "item");
                    myImage[i].Attributes.Add("src", myData[index * i].ToString());
                    //myImage[i].Attributes.Add("src", myData[(index * i) +1 ].ToString()); //Future captions-Caption 1 Note index!
                    //myImage[i].Attributes.Add("src", myData[(index * i) +2].ToString());//Caption 2-Index moves us through the array
                    myDiv[i].Controls.Add(myImage[i]);
                    Wrapper.Controls.Add(myDiv[i]);
                }

            }
            myCarousel.Controls.Add(Wrapper);
            return;
        } 

        public void BuildCarouselControls()
        {
            HtmlGenericControl[] mySpans = new HtmlGenericControl[4];
            HtmlGenericControl[] myAnchors = new HtmlGenericControl[2];

            //Left control- Anchor
            myAnchors[0] = new HtmlGenericControl("A");
            myAnchors[0].Attributes.Add("class", "left carousel-control");
            myAnchors[0].Attributes.Add("href", "#MainContent_myCarousel");
            myAnchors[0].Attributes.Add("role", "button");
            myAnchors[0].Attributes.Add("data-slide", "prev");

            //Left control- span #1
            mySpans[0] = new HtmlGenericControl("SPAN");
            mySpans[0].Attributes.Add("class", "glyphicon glyphicon-chevron-left");
            mySpans[0].Attributes.Add("aria-hidden", "true");
            myAnchors[0].Controls.Add(mySpans[0]);

            //Left control- span #2
            mySpans[1] = new HtmlGenericControl("SPAN");
            mySpans[1].Attributes.Add("class", "sr-only");
            mySpans[1].InnerText="Previous";
            myAnchors[0].Controls.Add(mySpans[1]);
            myCarousel.Controls.Add(myAnchors[0]);

            //Right control- Anchor
            myAnchors[1] = new HtmlGenericControl("A");
            myAnchors[1].Attributes.Add("class", "right carousel-control");
            myAnchors[1].Attributes.Add("href", "#MainContent_myCarousel");
            myAnchors[1].Attributes.Add("role", "button");
            myAnchors[1].Attributes.Add("data-slide", "next");

            //Right control- spans #1
            mySpans[2] = new HtmlGenericControl("SPAN");
            mySpans[2].Attributes.Add("class", "glyphicon glyphicon-chevron-right");
            mySpans[2].Attributes.Add("aria-hidden", "true");
            myAnchors[1].Controls.Add(mySpans[2]);

            //Right control- spans #2
            mySpans[3] = new HtmlGenericControl("SPAN");
            mySpans[3].Attributes.Add("class", "sr-only");
            mySpans[3].InnerText = "Next";
            myAnchors[1].Controls.Add(mySpans[3]);

            myCarousel.Controls.Add(myAnchors[1]);
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
            HtmlGenericControl imageDiv1 = new HtmlGenericControl("DIV");
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


        public int GetRowCount()
        {
            //install later a Try, Catch error routine
            //Setup data connection, get data fron sql table 'carousel_images
           SqlConnection cs= new SqlConnection("Data Source = s13.winhost.com, 14330; Initial Catalog = DB_110695_carousel; Persist Security Info = True; User ID = DB_110695_carousel_user; Password = John1!1");
           // SqlConnection cs = new SqlConnection("Data Source = (localdb)\\V11.0; Initial Catalog = upc; Integrated Security = True;");
            cs.Open();
            string str = "SELECT * ";
            str += " FROM carousel_images WHERE (beginDate <= {fn now() }) and (endDate >= {fn now() }) ORDER BY beginDate";

            SqlCommand command = new SqlCommand(str, cs);
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            int rowCount=dt.Rows.Count;
            cs.Close();
            return rowCount;
        }

        public static List<string> GetCarouselImageData()
        {
            //install later a Try, Catch error routine
            //Setup data connection, get data fron sql table 'carousel_images
            //SqlConnection cs = new SqlConnection("Data Source = (localdb)\\V11.0; Initial Catalog = upc; Integrated Security = True;");
            SqlConnection cs = new SqlConnection("Data Source = s13.winhost.com, 14330; Initial Catalog = DB_110695_carousel; Persist Security Info = True; User ID = DB_110695_carousel_user; Password = John1!1");
            cs.Open();
            string str = "SELECT * ";
            str += " FROM carousel_images WHERE (beginDate <= {fn now() }) and (endDate >= {fn now() }) ORDER BY beginDate";

            SqlCommand command = new SqlCommand(str, cs);
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            int rowCount = dt.Rows.Count;

            //One row per piece of data i.e. path,picName etc.
            //Total of 3 rows for each slide./
            //So 8 slides = 24 rows of data.
            List<string> rowData= new List<string>();
            for (int i = 0; i < rowCount; i++)
            {
                String temp = ""; 
                temp = dt.Rows[i]["path"].ToString();
                temp += "/" + dt.Rows[i]["picName"];
                rowData.Add(temp);
                temp = "";
                temp = dt.Rows[i]["lineOneText"].ToString();
                rowData.Add(temp);
                temp = "";
                temp = dt.Rows[i]["lineTwoText"].ToString();
                rowData.Add(temp);
            }
            cs.Close();
            return rowData;
        }
    }

}
