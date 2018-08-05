using System;

namespace upc_website
{
    public partial class archives : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
            {
                
            }
        protected string GetUrl(object id)
        {
            return "" + id;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button00_Click(object sender, EventArgs e)
        {
            //submit filter values
            //GridView1.DataSource = SqlDataSource1;
            //GridView1.DataBind();
        }

        protected void Button01_Click(object sender, EventArgs e)
        {
            //clear selections
            txtFind01.Text = String.Empty;
            txtFind02.Text = String.Empty;
            DLSeries.ClearSelection();
        }

        protected void SqlDatSeries_Selecting(object sender, System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs e)
        {
            //series filer changed
            txtFind01.Text = String.Empty;
            txtFind02.Text = String.Empty;

            GridView1.DataSourceID="SqlDataSource2";
            //GridView1.DataBind();
        }
    }
}