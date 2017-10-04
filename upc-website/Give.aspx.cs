using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace upc_website
{
    public partial class give : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ImageButton0_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.easytithe.com/dl/?uid=Unio1101162");
        }
    }
}