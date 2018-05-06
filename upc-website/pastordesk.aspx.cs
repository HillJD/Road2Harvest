using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace upc_website
{
    public partial class pastordesk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["DB_110695_carouselConnectionString"].ConnectionString;
                string selectSQL = "SELECT [SermonAudioID],[Title],[Speaker] from SermonAudio ORDER BY SermonAudioID DESC";
                SqlConnection con = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(selectSQL, con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapter.Fill(ds, "SermonAudio");

                grvPastorBlog.DataSource = ds;
                grvPastorBlog.DataBind();
            }
        }
    }
}