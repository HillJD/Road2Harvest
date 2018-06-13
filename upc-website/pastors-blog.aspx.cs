using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace upc_website
{
    public partial class pastors_blog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // SET THE CONNECTION STRING.
            string sCon = "Data Source = (localdb)\\V11.0; Initial Catalog = upc; Integrated Security = True;";
            
            //SqlConnection cs = new SqlConnection("Data Source = (localdb)\\V11.0; Initial Catalog = upc; Integrated Security = True;");
            using (SqlConnection con = new SqlConnection(sCon))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT Title FROM dbo.Articles"))
                {
                    SqlDataAdapter sda = new SqlDataAdapter();
                    try
                    {
                        cmd.Connection = con;
                        con.Open();
                        sda.SelectCommand = cmd;

                        // INITIALIZE DATASET OBJECT.
                        DataSet ds = new DataSet();
                        sda.Fill(ds);

                        // BIND DATABASE TO SELECT.
                        ddlBooks.DataSource = ds;
                        ddlBooks.DataTextField = "Title";
                        ddlBooks.DataValueField = "Title";
                        ddlBooks.DataBind();

                        // SET THE DEFAULT VALUE.
                        ddlBooks.Items.Insert(0, "- SELECT -");
                    }
                    catch (Exception ex)
                    { // }
                    }
                }
            }
        }
    }
}