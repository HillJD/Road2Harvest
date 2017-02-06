using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace upc_website
{
    public partial class addDiv : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var div = new Panel();
            div.ID = "mike";
           
            div.Controls.Add(new LiteralControl("<h1>hallo</h1>"));
            div.Controls.Add(new Image());
            Page.Form.Controls.Add(div);
            PlaceHolder1.Controls.Add(div);
        }
    }
}