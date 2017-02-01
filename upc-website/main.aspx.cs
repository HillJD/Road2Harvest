using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace upc_website
{
    public partial class main : System.Web.UI.Page
    {
        protected  void Page_PreInit(object sender, EventArgs e)
        {

            //HtmlControl ctr = new HtmlGenericControl("div");
            //ctr.Attributes.Add("id", "container");
            //ctr.Attributes.Add("class", "container");

            Response.Write("OnPreLoad Complete: ");
            Control o = this.FindControl("MainContent");
            if (o != null)
            {
                Response.Write("Container found");
            }
            else
            {
                Response.Write("Container tag not found");
            }





        }
    
    }

    }


