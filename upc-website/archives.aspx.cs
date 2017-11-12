using System;

namespace upc_website
{
    public partial class archives : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
            {
                
            }
        protected void GridView1_RowCreated(object sender,
            System.Web.UI.WebControls.GridViewRowEventArgs e)
            {
                if (!string.IsNullOrEmpty(txtFind01.Text))
                {
                    msg.InnerText = "Found " + GridView1.Rows.Count +
                    " rows matching keyword '" + txtFind01.Text + "'.";
                }
            }
     
    }
}