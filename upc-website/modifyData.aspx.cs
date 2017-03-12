using System;
using System.Data;
using System.Data.SqlClient;
using upc_website.Helpers;



namespace upc_website
{
    public partial class modifyData : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
                    
            SqlConnection cs = new SqlConnection("Data Source = (localdb)\\V11.0; Initial Catalog = upc; Integrated Security = True;");
            cs.Open();
            //string str = "insert into carousel_images values('mikey.jpg','images/')";
            string str= "SELECT * FROM carousel_images";
            SqlCommand command = new SqlCommand(str,cs);
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                picName.Text = dt.Rows[0]["picName"].ToString();
                path.Text = dt.Rows[0]["path"].ToString();
            }
//            command.Connection = cs;
  //          command.CommandType = CommandType.Text;
    //        command.CommandText = "SELECT * FROM carousel_images";
            //command.ExecuteNonQuery();

            cs.Close();            
        }
    }
}