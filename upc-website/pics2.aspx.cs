using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.Adapters;


namespace upc_website
{
    public partial class pics2 : System.Web.UI.Page
    {
        //This code to asterrisk for debuging only
        //Handle button clicks for image previous & next
        protected void Button_Click(object sender, EventArgs e)
        {
            //This will come from db
            //int numOfPics = 3;

            //string[] pics_url = new string[numOfPics];
            ////Load the array from db here
            ////for (int i = 0; i < numOfPics++)
            ////{
            //pics_url[0] = "pic1.jpg";
            //pics_url[1] = "pic2.jpg";
            //pics_url[2] = "pic3.jpg";

            ////Output to screen each element
            //foreach (string i in pics_url)
            //{
            //    Response.Write("Item: " + i + " " + "<br/>");
            //}
            //***********************************************
            
            //Button someButton = sender as Button;
            Button someButton = sender as Button;
            //Id of img tag = img1
            var img_Id = img1;

            img_Id.Src = "/images/pic1.jpg";

            if (someButton != null)
            {
                if (someButton.Text == "Next")

                {
                    //Response.Write("Next");
                    //img_Id.Src = "/images/pic2.jpg";
                    
                }
                else
                {
                    //Response.Write("Previous");
                }
            }
        }





        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }

        //protected void Button1_Click1(object sender, EventArgs e)
        //{
        //    var i = img1;
        //    i.Src = "/images/pic2.jpg";
        //}




    }

}