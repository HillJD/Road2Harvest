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
    public partial class displayData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Dictionary<string, string> dic = GetValues();
            int rowCount = dic.Count;
            foreach (var Pair in dic)
            {
                color.Text += " Key " + Pair.Key + " Value " + Pair.Value + "\n\n";
            }
        }
        public Dictionary<string, string> GetValues()
        {
            //Setup data connection, get data fron sql table 'carousel_images
            SqlConnection cs = new SqlConnection("Data Source = (localdb)\\V11.0; Initial Catalog = upc; Integrated Security = True;");
            cs.Open();
            string str= "SELECT id, beginDate, endDate, color, path, picName";
            str += " FROM carousel_images WHERE (beginDate > CONVERT(DATETIME, '2017-04-25 00:00:00', 102))";
            str += " AND (endDate < CONVERT(DATETIME, '2017-08-01 00:00:00', 102)) order by beginDate asc";
            // string str = "SELECT * FROM carousel_images WHERE (beginDate > CONVERT(DATETIME, '2016-12-01 00:00:00', 102))";

            SqlCommand command = new SqlCommand(str, cs);
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);

            Dictionary<string, string> d = new Dictionary<string, string>();
            if (dt.Rows.Count > 0)
            {

                int rowCount = dt.Rows.Count;
                for (int i = 0; i < rowCount; i++)
                {
                    string imageName = dt.Rows[i]["picName"].ToString();
                    string imageColor = dt.Rows[i]["color"].ToString();
                    d.Add(imageName, imageColor);
                }
                return d;
            }
            else
            {
                return d;
            }
        }
    }
}