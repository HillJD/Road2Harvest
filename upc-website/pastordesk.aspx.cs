using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.HtmlControls;

namespace upc_website
{
    public partial class pastordesk : System.Web.UI.Page
    {
        //Must be visible to all below
        HtmlGenericControl flexContainer = new HtmlGenericControl("div"); //Top level <div>
        HtmlGenericControl flexItem = new HtmlGenericControl("div"); //Wrapper for 'title' & message div
        HtmlGenericControl titleContainer = new HtmlGenericControl("div");//Wrapper for 'title'
        HtmlGenericControl sub_titleContainer= new HtmlGenericControl("div"); //Wrapper for 'sub-title'
        HtmlGenericControl messageContainer = new HtmlGenericControl("div"); //Wrapper for 'message' 
        
        //string connectionString = "SELECT TOP 10 ArticleID,Author,PubDt,SeriesOrder,Title,Body FROM Articles ORDER BY Title ASC";
        //string connectionString="SqlConnection cs = new SqlConnection("Data Source = s13.winhost.com, 14330; Initial Catalog = DB_110695_carousel; Persist Security Info = True; User ID = DB_110695_carousel_user; Password = John1!1");"

        //Used in BuildCarouselImageDiv
        public enum ArticleField
        {
            ArticleID, //0
            Author, //1
            PubDt, //2
            Title, //3
            SeriesID, //4
            Body //5
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            int messagesToAdd = 0;
            messagesToAdd = GetRowCount(); //i.e. # of pictures slides to add
           BuildFlexContainer();
            //BuildFlexItem();
            //BuildTitle();
            //BuildMessage(); //
            BuildFlexItemDiv(messagesToAdd);
        }

        public string DbConnectionSelectString()
        {
            //string connectionString = "SELECT ArticleID,Author,PubDt,SeriesOrder,Title,concat(substring(body,1,100),'...') as body FROM Articles ORDER BY ArticleID ASC";
            //string connectionString = "SELECT ArticleID,Author,PubDt,SeriesOrder,Title,concat(substring(body,1,200),'...') as body FROM Articles ORDER BY ArticleID ASC OFFSET 0 ROWS FETCH NEXT 300 ROWS ONLY";
            // 7.10.19 string connectionString = "SELECT ArticleID,Author,PubDt,SeriesOrder,LOWER(Title) as Title,body FROM Articles ORDER BY PubDt DESC OFFSET 0 ROWS FETCH NEXT 50 ROWS ONLY";
            //7.10.19 Changed date returned, PubDt, with CONVERT SQl command to return date properly. No need to string contenation
            string connectionString = "SELECT ArticleID,Author,CONVERT(varchar,PubDt,101) as PubDt,SeriesOrder,LOWER(Title) as Title,body FROM Articles ORDER BY PubDt DESC OFFSET 0 ROWS FETCH NEXT 50 ROWS ONLY";
            //string connectionString = "SELECT ArticleID,Author,PubDt,SeriesOrder,Title,body FROM Articles ORDER BY ArticleID ASC OFFSET 0 ROWS FETCH NEXT 50 ROWS ONLY";
            return connectionString;
        }

        public int GetRowCount()
        {
            //install later a Try, Catch error routine
            //Setup data connection, get data fron sql table 'Articles'
            SqlConnection cs = new SqlConnection("Data Source = s13.winhost.com, 14330; Initial Catalog = DB_110695_carousel; Persist Security Info = True; User ID = DB_110695_carousel_user; Password = John1!1");
            //SqlConnection cs = new SqlConnection("Data Source = (localdb)\\V11.0; Initial Catalog = upc; Integrated Security = True;");
            cs.Open();
            string str = DbConnectionSelectString();
            SqlCommand command = new SqlCommand(str, cs);

            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);

            int rowCount = dt.Rows.Count;
            if (rowCount == 0)
            {
                //This means there's no records to show, 
                //so set rowCount to 1 so we can display the default image, default_carousel.jpg
                //rowCount = 1;
            }
            cs.Close();
            return rowCount;
        }

        //This div wraps the whole pastor's desk content, therefore top level Div
        public void BuildFlexContainer()
        {
            //flexContainer.ID = "mainDiv";
            flexContainer.Attributes.Add("class", "flex-container");
            ControlContainer.Controls.Add(flexContainer); ///PlaceHolder in default.aspx this holds all elements for carousel
        }

        public void BuildFlexItem()
        {
            flexItem.Attributes.Add("class", "flex-item");
            flexContainer.Controls.Add(flexItem);
        }

        public void BuildTitle()
        {
            titleContainer.Attributes.Add("class", "title");
            flexItem.Controls.Add(titleContainer);
        }

        public void BuildMessage()
        {
            titleContainer.Attributes.Add("class", "message");
            flexItem.Controls.Add(messageContainer);
            flexContainer.Controls.Add(flexItem);
        }

        //This builds all the flex-items divs.  The flex-item divs are one per article.
        //This then rolls the subTitle div into the 'Title' div & then Title div & 'message' divs 
        //into the flex-item div according to
        //the number of messages that are called for from the filter. 
        public void BuildFlexItemDiv(int messagesToAdd)
        {
            //This moves us through the array
            //index 6 = fields= ArticleID,Author,PubDt,SeriesOrder,Title,Body

            int index = 6;

            //Get data fron db for items requested, return as List<>
            List<string> myData = GetMessageData(); //List myData is zero based

            //This builds the 'flex-item' divs, puts them in an array 'myFlexItemDiv'
            HtmlGenericControl[] myFlexItemDiv = new HtmlGenericControl[messagesToAdd];
            for (int x = 0; x < messagesToAdd; x++)
            {
                myFlexItemDiv[x] = new HtmlGenericControl();
            }

            //This builds the divs for 'Title, put them in an array 'myTitleDiv'
            HtmlGenericControl[] myTitleDiv = new HtmlGenericControl[messagesToAdd];
            for (int x = 0; x < messagesToAdd; x++)
            {
                myTitleDiv[x] = new HtmlGenericControl();
            }

            //This builds the divs for 'subtitle' put them in an array 'mySubTitleDiv'
            HtmlGenericControl[] mySubTitleDiv = new HtmlGenericControl[messagesToAdd];
            for (int x = 0; x < messagesToAdd; x++)
            {
                mySubTitleDiv[x] = new HtmlGenericControl();
            }

            //This builds the divs for 'Message', put them in an array 'myMessageDiv'
            HtmlGenericControl[] myMessageDiv = new HtmlGenericControl[messagesToAdd];
            for (int x = 0; x < messagesToAdd; x++)
            {
                myMessageDiv[x] = new HtmlGenericControl();
            }

            //Build all elements here from arrays created above
            //Note use of enum declared at class level, i.e. (int)ArticlelField.ArticleID
            for (int i = 0; i < messagesToAdd; i++)
            {
                myFlexItemDiv[i] = new HtmlGenericControl("div");
                myTitleDiv[i] = new HtmlGenericControl("div");
                mySubTitleDiv[i] = new HtmlGenericControl("div");
                myMessageDiv[i] = new HtmlGenericControl("div");

                myFlexItemDiv[i].Attributes.Add("class", "flex-item");
                myTitleDiv[i].Attributes.Add("class", "title");
                mySubTitleDiv[i].Attributes.Add("class", "sub-title");
                myMessageDiv[i].Attributes.Add("class", "message");

                myTitleDiv[i].InnerHtml = myData[(index * i) + (int)ArticleField.Title].ToString();//Title
                mySubTitleDiv[i].InnerHtml = myData[(index * i) + (int)ArticleField.Author].ToString();//Author
                int dateLength= myData[(index * i) + (int)ArticleField.PubDt].ToString().Length;
                if (dateLength!=0)
                {
                    //7.10.19 Changed SQL string to get the date formatted by SQl in DbConnectionSelectString()and not by me, thus removed substring command below
                    //mySubTitleDiv[i].InnerHtml += " " + myData[(index * i) + (int)ArticleField.PubDt].ToString().Substring(0, 10);
                    mySubTitleDiv[i].InnerHtml += " " + myData[(index * i) + (int)ArticleField.PubDt].ToString();                    
                }
                
                //string t = myData[(index * i) + (int)ArticleField.PubDt].ToString();
                //string t2 = t.Substring(0, 3);
                //DateTime myDate = new DateTime(t);
                //mySubTitleDiv[i].InnerHtml += " " +  t2;

                //string t = myData[(index * i) + (int)ArticleField.PubDt].ToString();
                myMessageDiv[i].InnerHtml = myData[(index * i) + (int)ArticleField.Body].ToString();//Body

                myTitleDiv[i].Controls.Add(mySubTitleDiv[i]);
                myFlexItemDiv[i].Controls.Add(myTitleDiv[i]);
                myFlexItemDiv[i].Controls.Add(myMessageDiv[i]);
                flexContainer.Controls.Add(myFlexItemDiv[i]);
            }

        } //End of BuildFlexItemDiv()

        public List<string> GetMessageData()
        {
            //install later a Try, Catch error routine
            //Setup data connection, get data fron sql table 'carousel_images
            //SqlConnection cs = new SqlConnection("Data Source = (localdb)\\V11.0; Initial Catalog = upc; Integrated Security = True;");
            SqlConnection cs = new SqlConnection("Data Source = s13.winhost.com, 14330; Initial Catalog = DB_110695_carousel; Persist Security Info = True; User ID = DB_110695_carousel_user; Password = John1!1");
            cs.Open();
            string str = DbConnectionSelectString();

            SqlCommand command = new SqlCommand(str, cs);
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            int rowCount = dt.Rows.Count;
            
            ////One row per piece of data 6 database fields a follows:
            ////ArticleID,Author,PubDt,SeriesOrder,Title,Body
            ////Total of 6 rows for each article.
            ////So 1 article = 6 rows of data

            ////Must be at least one row, else we will create one row
            List<string> rowData = new List<string>();
            String temp = "";

            if (rowCount > 0)
            {

                for (int i = 0; i < rowCount; i++)
                {
                    temp = "";
                    temp = dt.Rows[i]["ArticleID"].ToString();
                    rowData.Add(temp);
                    temp = "";
                    temp = dt.Rows[i]["Author"].ToString();
                    rowData.Add(temp);
                    temp = "";
                    temp = dt.Rows[i]["PubDt"].ToString();
                    rowData.Add(temp);
                    temp = "";
                    temp = dt.Rows[i]["Title"].ToString();
                    rowData.Add(temp);
                    temp = "";
                    temp = dt.Rows[i]["SeriesOrder"].ToString();
                    rowData.Add(temp);
                    temp = "";
                    temp = dt.Rows[i]["Body"].ToString();
                    rowData.Add(temp); //Future use
                }
            }
            else
            {
                //No articles to display, so just make up one
                string ArticleID = "1";
                string Author = "Union Pentecostal Church";
                string PubDt = DateTime.Now.ToString();
                string SeriesOrder = "";
                string Title = "No message to display!";
                string Body = "No message could be found to display!";

                temp = "";
                temp = ArticleID;
                rowData.Add(temp);//ArticleID
                temp = "";
                temp = Author;
                rowData.Add(temp);//Author
                temp = "";
                temp = PubDt;
                rowData.Add(temp);//Pub date
                temp = "";
                temp = SeriesOrder;
                rowData.Add(temp);//SeriesOrder
                temp = "";
                temp = Title;
                rowData.Add(temp); //Title
                temp = "";
                temp = Body;
                rowData.Add(temp); //Body
            }
            cs.Close();
            return rowData;

        }


    }

}

