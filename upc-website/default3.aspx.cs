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
    public partial class newCarousel : System.Web.UI.Page
    {
        //Must be visible to all below
        HtmlGenericControl myCarousel = new HtmlGenericControl("div"); //Top level <div>
        HtmlGenericControl OrderedList = new HtmlGenericControl("ol"); //ordered list container for listitems
        HtmlGenericControl SlideWrapper = new HtmlGenericControl("div"); //Wrapper for slides
        HtmlGenericControl ImageWrapper = new HtmlGenericControl("div");//Wrapper for each image inside master <div> for all slides
        HtmlGenericControl ImageContainer = new HtmlGenericControl("img");//Container for each individual image
        HtmlGenericControl VideoContainer = new HtmlGenericControl("video");//Container for each individual video
                                                                          //HtmlGenericControl ImageContainer = new HtmlGenericControl("A");
                                                                          //HtmlGenericControl ImageContainer = new HtmlGenericControl("SPAN");
                                                                          //HtmlGenericControl li_1 = new System.Web.UI.HtmlControls.HtmlGenericControl("li");

        //Used in BuildCarouselImageDiv
        public enum carouselField
        {
            PicPath, //0
            LineOneCaption, //1
            LineTwoCaption, //2
            LineThreeCaption, //3
            Url, //4
            UrlLocation //5
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
            int SlidesToAdd = GetRowCount(); //i.e. # of pictures slides to add
            BuildCarouselDiv("10000");//Slide display time
            BuildCarouselOrderedList();
            BuildCarouselListItems(SlidesToAdd);
            BuildCarouselWrapperDiv(); //
            BuildCarouselImageDiv(SlidesToAdd);
            BuildCarouselControls();

        }

        public int GetRowCount()
        {
            //install later a Try, Catch error routine
            //Setup data connection, get data fron sql table 'carousel_images
            SqlConnection cs = new SqlConnection("Data Source = s13.winhost.com, 14330; Initial Catalog = DB_110695_carousel; Persist Security Info = True; User ID = DB_110695_carousel_user; Password = John1!1");
            //SqlConnection cs = new SqlConnection("Data Source = (localdb)\\V11.0; Initial Catalog = upc; Integrated Security = True;");
            cs.Open();
            string str = "SELECT * ";
            str += " FROM carousel_images WHERE (beginDate <= {fn now() }) and (endDate >= {fn now() }) ORDER BY beginDate";

            SqlCommand command = new SqlCommand(str, cs);
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            int rowCount = dt.Rows.Count;
            if (rowCount == 0)
            {
                //This means there's no records to show, 
                //so set rowCount to 1 so we can display the default image, default_carousel.jpg
                rowCount = 1;
            }
            cs.Close();
            return rowCount;
        }

        public static List<string> GetCarouselImageData()
        {
            //install later a Try, Catch error routine
            //Setup data connection, get data fron sql table 'carousel_images
            // SqlConnection cs = new SqlConnection("Data Source = (localdb)\\V11.0; Initial Catalog = upc; Integrated Security = True;");
            SqlConnection cs = new SqlConnection("Data Source = s13.winhost.com, 14330; Initial Catalog = DB_110695_carousel; Persist Security Info = True; User ID = DB_110695_carousel_user; Password = John1!1");
            cs.Open();
            string str = "SELECT * ";
            str += " FROM carousel_images WHERE (beginDate <= {fn now() }) and (endDate >= {fn now() }) ORDER BY beginDate";

            SqlCommand command = new SqlCommand(str, cs);
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            int rowCount = dt.Rows.Count;

            //One row per piece of data 8 database fields a follows:
            //(picName + path), lineOneCaption, lineTwoCaption,lineThreeCaption, url, urlLocation
            //picName & path are concatenated, thus only 6 rows of data are needed
            //Total of 6 rows for each slide./
            //So 1 slide = 6 rows of data

            //Must be at least one row, else we will create one row
            //for the default slide, default_carousel.jpg in the else statement below
            List<string> rowData = new List<string>();
            String temp = "";
            if (rowCount > 0)
            {

                for (int i = 0; i < rowCount; i++)
                {

                    temp = dt.Rows[i]["path"].ToString();
                    temp += "/" + dt.Rows[i]["picName"];
                    rowData.Add(temp);
                    temp = "";
                    temp = dt.Rows[i]["lineOneCaption"].ToString();
                    rowData.Add(temp);
                    temp = "";
                    temp = dt.Rows[i]["lineTwoCaption"].ToString();
                    rowData.Add(temp);
                    temp = dt.Rows[i]["lineThreeCaption"].ToString();
                    rowData.Add(temp);
                    temp = dt.Rows[i]["url"].ToString();
                    rowData.Add(temp);
                    temp = dt.Rows[i]["urlLocation"].ToString();
                    rowData.Add(temp); //Future use
                }
            }
            else
            {
                string path = "images/carousel/default_carousel.jpg";
                string lineOneCaption = "";
                string lineTwoCaption = "";
                string lineThreeCaption = "";
                string url = "";
                string urlLocation = "";

                temp = "";
                temp = path;
                //temp += "/" + dt.Rows[i]["picName"];
                rowData.Add(temp);
                temp = "";
                temp = lineOneCaption;
                rowData.Add(temp);
                temp = "";
                temp = lineTwoCaption;
                rowData.Add(temp);
                temp = lineThreeCaption;
                rowData.Add(temp);
                temp = url;
                rowData.Add(temp);
                temp = urlLocation;
                rowData.Add(temp); //Future use
            }
            cs.Close();
            return rowData;

        }


        //This div wraps the whole carousel, therefore top level Div
        public void BuildCarouselDiv(string slideDelay)
        {
            myCarousel.ID = "myCarousel";
            myCarousel.Attributes.Add("class", "carousel slide carousel-fade");
            myCarousel.Attributes.Add("data-ride", "carousel");
            myCarousel.Attributes.Add("data-interval", slideDelay);
            ControlContainer.Controls.Add(myCarousel); ///PlaceHolder in default.aspx this holds all elements for carousel
            //<asp:PlaceHolder ID="ControlContainer" runat="server"></asp:PlaceHolder>
        }

        public void BuildCarouselOrderedList()
        {
            //******* carousel indicators ************************
            //Create ordered list 'ol' for 'li' elements
            OrderedList.Attributes.Add("class", "carousel-indicators");
            myCarousel.Controls.Add(OrderedList); //temporary
            return;
        }

        //This the listitems for carousel-indicators,
        //the amount needed is based on # of slides needed
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
                OrderedList.Controls.Add(p[i]);
            }
            return;
        }

        //This generates the Wrapper div i.e contains div that wraps all images and
        //hyperlinks for images in <div class-'carousel-inner'>
        public void BuildCarouselWrapperDiv()
        {
            SlideWrapper.Attributes.Add("class", "carousel-inner");
            SlideWrapper.Attributes.Add("role", "listbox");
            myCarousel.Controls.Add(SlideWrapper);
            return;
        }

        public void BuildCarouselImageDiv(int slidesToBuild)
        {


            //This moves us through the array
            //index 6 = fields= path, lineOneText, lineTwoText, lineThreeText, url, urlLocation

            int index = 6;



            //Get data fron db for items requested, return as List<>
            List<string> myData = GetCarouselImageData(); //List myData is zero based

            //This builds the divs for images, put them in an array 'myImageDiv'
            HtmlGenericControl[] myImageDiv = new HtmlGenericControl[slidesToBuild];
            for (int x = 0; x < slidesToBuild; x++)
            {
                myImageDiv[x] = new HtmlGenericControl();
            }

            //This builds the anchor element links for images, put them in an array 'myAnchor'
            HtmlGenericControl[] myAnchor = new HtmlGenericControl[slidesToBuild];
            for (int x = 0; x < slidesToBuild; x++)
            {
                myAnchor[x] = new HtmlGenericControl();
            }

            //This builds the divs for captions, put them in an array
            HtmlGenericControl[] myCaptionDiv = new HtmlGenericControl[slidesToBuild];
            for (int x = 0; x < slidesToBuild; x++)
            {
                myCaptionDiv[x] = new HtmlGenericControl();
            }

            //This builds the <h3> for captions, put them in an array
            HtmlGenericControl[] myCaptionH3 = new HtmlGenericControl[slidesToBuild];
            for (int x = 0; x < slidesToBuild; x++)
            {
                myCaptionH3[x] = new HtmlGenericControl();
            }

            //This builds the <h4> for captions, put them in an array
            HtmlGenericControl[] myCaptionH4 = new HtmlGenericControl[slidesToBuild];
            for (int x = 0; x < slidesToBuild; x++)
            {
                myCaptionH4[x] = new HtmlGenericControl();
            }

            //This builds the <h5> for captions, put them in an array
            HtmlGenericControl[] myCaptionH5 = new HtmlGenericControl[slidesToBuild];
            for (int x = 0; x < slidesToBuild; x++)
            {
                myCaptionH5[x] = new HtmlGenericControl();
            }

            //This builds the image element for images, put them in an array
            HtmlGenericControl[] myImage = new HtmlGenericControl[slidesToBuild];
            for (int x = 0; x < slidesToBuild; x++)
            {
                myImage[x] = new HtmlGenericControl();
            }

            //This builds the video element for videos, put them in an array added 1.27.18
            HtmlGenericControl[] myVideo = new HtmlGenericControl[slidesToBuild];
            for (int x = 0; x < slidesToBuild; x++)
            {
                myVideo[x] = new HtmlGenericControl();
            }

            //This builds the source tag element for videos, put them in an array added 1.27.18
            HtmlGenericControl[] mySource = new HtmlGenericControl[slidesToBuild];
            for (int x = 0; x < slidesToBuild; x++)
            {
                mySource[x] = new HtmlGenericControl();
            }

            //Build all elements here from arrays created above
            for (int i = 0; i < slidesToBuild; i++)
            {
                myImageDiv[i] = new HtmlGenericControl("div");
                myAnchor[i] = new HtmlGenericControl("a"); //added 07_14_17
                myImage[i] = new HtmlGenericControl("img");
                myVideo[i] = new HtmlGenericControl("video"); //1.27.18
                mySource[i] = new HtmlGenericControl("source"); //1.27.18
                myCaptionDiv[i] = new HtmlGenericControl("div");
                myCaptionH3[i] = new HtmlGenericControl("h3");
                myCaptionH4[i] = new HtmlGenericControl("h4");
                myCaptionH5[i] = new HtmlGenericControl("h5");

                //Note use of enum declared at class level, i.e. (int)carouselField.UrlLocation
                if (i == 0) //First slide, has to be set to "item active"
                {
                    if (myData[index * i].IndexOf("mp4") == -1) //Not an mp4 (video) so therefore it's a jpg (image)
                    {
                        myImageDiv[i].Attributes.Add("class", "item active");
                        myAnchor[i].Attributes.Add("href", myData[(index * i) + (int)carouselField.Url].ToString());
                        if (myData[(index * i) + (int)carouselField.UrlLocation] == "external") //urlLocation == "external" means open in new webpage, else internal link (default)
                        {
                            string urlLocation = "_blank";
                            myAnchor[i].Attributes.Add("target", urlLocation);
                        }
                        myImage[i].Attributes.Add("src", myData[index * i].ToString());
                    }
                    else
                    { //it's a video
                        myImageDiv[i].Attributes.Add("class", "item active");
                        myAnchor[i].Attributes.Add("href", myData[(index * i) + (int)carouselField.Url].ToString());
                        if (myData[(index * i) + (int)carouselField.UrlLocation] == "external") //urlLocation == "external" means open in new webpage, else internal link (default)
                        {
                            string urlLocation = "_blank";
                            myAnchor[i].Attributes.Add("target", urlLocation);
                        }
                        mySource[i].Attributes.Add("src", myData[index * i].ToString());
                        mySource[i].Attributes.Add("type", "video/mp4");
                        myVideo[i].Attributes.Add("autoplay", "autoplay");//url
                        myVideo[i].Attributes.Add("width", "1920");//url
                        myVideo[i].Attributes.Add("height", "1080");//url
                    }

                    myCaptionDiv[i].Attributes.Add("class", "carousel-caption"); //Future captions
                    myCaptionH3[i].InnerHtml = myData[(index * i) + (int)carouselField.LineOneCaption].ToString();//caption1
                    myCaptionH4[i].InnerHtml = myData[(index * i) + (int)carouselField.LineTwoCaption].ToString();//caption 2
                    myCaptionH5[i].InnerHtml = myData[(index * i) + (int)carouselField.LineThreeCaption].ToString();//caption 3
                    myCaptionDiv[i].Controls.Add(myCaptionH3[i]);
                    myCaptionDiv[i].Controls.Add(myCaptionH4[i]);
                    myCaptionDiv[i].Controls.Add(myCaptionH5[i]);

                    if (myData[index * i].IndexOf("mp4") == -1) //Not an mp4 (video) so therefore it's a jpg (image)
                    {
                        myAnchor[i].Controls.Add(myImage[i]);
                    }
                    else
                    {
                        myAnchor[i].Controls.Add(myVideo[i]);
                    }

                    myAnchor[i].Controls.Add(myCaptionDiv[i]);
                    myImageDiv[i].Controls.Add(myAnchor[i]);
                    //myImageDiv[i].Controls.Add(myImage[i]);


                    //myImageDiv[i].Controls.Add(myCaptionDiv[i]);
                    SlideWrapper.Controls.Add(myImageDiv[i]);

                }
                else ////Not the first slide, below
                {
                    if (myData[index * i].IndexOf("mp4") == -1) //Not an mp4 (video) so therefore it's a jpg (image)
                    {
                        myImageDiv[i].Attributes.Add("class", "item");
                        myAnchor[i].Attributes.Add("href", myData[(index * i) + (int)carouselField.Url].ToString());
                        if (myData[(index * i) + (int)carouselField.UrlLocation] == "external") //urlLocation == "external" means open in new webpage, else internal link (default)
                        {
                            string urlLocation = "_blank";
                            myAnchor[i].Attributes.Add("target", urlLocation);
                        }
                        myImage[i].Attributes.Add("src", myData[index * i].ToString());
                    }
                    else
                    { //it's a video
                        myImageDiv[i].Attributes.Add("class", "item");
                        myAnchor[i].Attributes.Add("href", myData[(index * i) + (int)carouselField.Url].ToString());
                        if (myData[(index * i) + (int)carouselField.UrlLocation] == "external") //urlLocation == "external" means open in new webpage, else internal link (default)
                        {
                            string urlLocation = "_blank";
                            myAnchor[i].Attributes.Add("target", urlLocation);
                        }
                        mySource[i].Attributes.Add("src", myData[index * i].ToString());
                        mySource[i].Attributes.Add("type", "video/mp4");
                        myVideo[i].Attributes.Add("id", "myVid");//id
                        //myVideo[i].Attributes.Add("autoplay", "autoplay");//url
                        //myVideo[i].Attributes.Add("loop", "loop");//url
                        myVideo[i].Attributes.Add("width", "100%");//url
                        myVideo[i].Attributes.Add("height", "auto");//url
                    }

                    myCaptionDiv[i].Attributes.Add("class", "carousel-caption"); //Future captions
                    myCaptionH3[i].InnerHtml = myData[(index * i) + 1].ToString();//caption 1
                    myCaptionH4[i].InnerHtml = myData[(index * i) + 2].ToString();//caption 2
                    myCaptionH5[i].InnerHtml = myData[(index * i) + 3].ToString();//caption 3
                    myCaptionDiv[i].Controls.Add(myCaptionH3[i]);
                    myCaptionDiv[i].Controls.Add(myCaptionH4[i]);
                    myCaptionDiv[i].Controls.Add(myCaptionH5[i]);

                    //Add myImage or myVideo to anchor tag
                    if (myData[index * i].IndexOf("mp4") == -1) //Not an mp4 (video) so therefore it's a jpg (image)
                    {
                        myAnchor[i].Controls.Add(myImage[i]);
                    }
                    else //
                    {
                        myVideo[i].Controls.Add(mySource[i]);
                        myAnchor[i].Controls.Add(myVideo[i]);
                    }

                    myAnchor[i].Controls.Add(myCaptionDiv[i]);
                    myImageDiv[i].Controls.Add(myAnchor[i]);
                    SlideWrapper.Controls.Add(myImageDiv[i]);
                }
            }
            myCarousel.Controls.Add(SlideWrapper);
            return;
        }

        //This builds the carousel controls
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
            mySpans[1].InnerText = "Previous";
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
    }

}
