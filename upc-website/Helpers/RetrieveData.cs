using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace upc_website.Helpers
{

    public class RetrieveData
    {

        SqlConnection cs = new SqlConnection("Data Source = (localdb)\\V11.0; Initial Catalog = upc; Integrated Security = True;");
        cs.Open();
            //string str = "insert into carousel_images values('mikey.jpg','images/')";
            string str = "SELECT * FROM carousel_images";
        SqlCommand command = new SqlCommand(str, cs);
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(command);
        

    }
    }

