using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using upc_website.Helpers;

namespace upc_website
{
    public partial class ReturnList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<CarouselItem> au = new List<CarouselItem>();
            au.Add(new CarouselItem("Mike Dearth", 65, "A Death Wish", false, new DateTime(2010, 2, 22)));
            au.Add(new CarouselItem("Carol Dearth", 51, "A Deathly Wish", true, new DateTime(2017, 4, 22)));

            string result = "";
            foreach (var author in au)
            {
                result = author.Name.ToString() + " " + author.Age.ToString() + " " + author.BookTitle.ToString() + " " + author.IsMVP.ToString() + " " + author.PublishedDate.ToString();
            }
        }
    }
}