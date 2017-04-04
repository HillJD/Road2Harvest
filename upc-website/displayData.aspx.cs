using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using upc_website.Helpers;
using System.Reflection;

namespace upc_website
{
    public partial class displayData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetValues();
        }

        public void GetValues()
        {
            //Setup data connection, get data fron sql table 'carousel_images
            SqlConnection cs = new SqlConnection("Data Source = (localdb)\\V11.0; Initial Catalog = upc; Integrated Security = True;");
            cs.Open();
            string str = "SELECT * ";
            str += " FROM carousel_images WHERE (beginDate <= {fn now() }) and (endDate >= {fn now() }) ORDER BY beginDate";

            SqlCommand command = new SqlCommand(str, cs);
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);

            if (dt.Rows.Count > 0)
            {

                CarouselItem ci = new CarouselItem();

                int rowCount = dt.Rows.Count;
                for (int i = 0; i < rowCount; i++)
                {

                    ci.PicName = dt.Rows[i]["picName"].ToString();
                    ci.PicPath = dt.Rows[i]["path"].ToString(); ;
                    ci.Color = dt.Rows[i]["color"].ToString();
                    ci.BeginDate = Convert.ToDateTime(dt.Rows[i]["beginDate"]);
                    ci.EndDate = Convert.ToDateTime(dt.Rows[i]["endDate"]);
                    ci.LineOneCaption = dt.Rows[i]["lineOneText"].ToString();
                    ci.LineTwoCaption = dt.Rows[i]["lineTwoText"].ToString();
                }

            }
        }
    }
        
}
     


         
