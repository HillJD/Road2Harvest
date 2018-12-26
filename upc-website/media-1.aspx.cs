using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace upc_website
{
    public partial class media_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                //if (Request.Form["__EVENTTARGET"] == "Button2")
                //{
                string controlName=Request.Params.Get("__eventtarget");
                Response.Write("Target: " + controlName);
                label1.Text = controlName;
                //Response.Write("Argument: " + Request.Form["__EVENTARGUMENT"] + " Target: " + Request.Form["__EVENTTARGET"]);
                // Fire event
                //Button2_Click(this, new EventArgs());
                //}
            }
            else
            {
                Response.Write("No postBack!");
                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("Mike's Button2 Click Event");
        }
    }
}