using Facebook;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



namespace upc_website.Account
{
     
    public partial class FacebookSync : System.Web.UI.Page
    {
        private FacebookClient client;
        private bool Auth_Done = false;

        protected void Page_Load(object sender, EventArgs e)
        {
                        
            
        }


        private void CheckAuth()
        {
            string app_id = "1846335912290211";
            string app_secret = "7f7555d14710c880b0f55885f7f13c9f";
            //string scope = "public_profile,publish_actions,email"; //USE THIS SCOPE TO POST TO FB
            string scope = "public_profile, email";


            if (Request["code"] == null)
            {
                Response.Redirect(string.Format(
                    "https://graph.facebook.com/oauth/authorize?client_id={0}&redirect_uri={1}&scope={2}",
                    app_id, Request.Url.AbsoluteUri, scope));
                

            }
            
                Dictionary<string, string> tokens = new Dictionary<string, string>();
                string url = string.Format("https://graph.facebook.com/oauth/access_token?client_id={0}&redirect_uri={1}&code={2}&client_secret={3}",
                    app_id, Request.Url.AbsoluteUri, Request["code"].ToString(), app_secret);

                HttpWebRequest request = WebRequest.Create(url) as HttpWebRequest;

                using (HttpWebResponse response = request.GetResponse() as HttpWebResponse)
                {
                    StreamReader reader = new StreamReader(response.GetResponseStream());

                    string vals = reader.ReadToEnd();
                    string key = null;
                    string value = null;
                    char[] trimChars = { '\"', '{', '}', '\"' };

                    foreach (string token in vals.Split(','))
                    {
                        key = token.Substring(0, token.IndexOf(":"));
                        value = token.Substring(token.IndexOf(":") + 1, token.Length - token.IndexOf(":") - 1);
                        key = key.Trim(trimChars);
                        value = value.Trim(trimChars);
                        tokens.Add(key, value);

                    }
                    response.Close();
                }
                

                    string key1 = "access_token";
                    var check = tokens.ContainsKey(key1);
                    if (!check) { key1 = tokens.Keys.ElementAt(0); }
                    string access_token = tokens[key1];

                   //assume identity of current user for posting etc
                    client = new FacebookClient(access_token);

                var result = (IDictionary<string, object>)client.Get("/me?fields=id,email,first_name,last_name");

                var id = (string)result["id"];
                var email = (string)result["email"];
                var firstName = (string)result["first_name"];
                var lastName = (string)result["last_name"];
                FN.Text = firstName;
                LN.Text = lastName;
                EMAIL.Text = email;
                ID.Text = id;

                //Write data to user database
         /*       SqlConnection conn = new SqlConnection("Data Source=s13.winhost.com;Initial Catalog=DB_110695_webauth;Persist Security Info=True;User ID=DB_110695_webauth_user;Password=John1!1");
                string stmt = "Insert into User(UID, FN, LN) Values(@UID, @FN, @LN)";

                SqlCommand insert = new SqlCommand(stmt, conn);
                insert.Parameters.AddWithValue("@UID", id);
                insert.Parameters.AddWithValue("@FN", firstName);
                insert.Parameters.AddWithValue("@LN", lastName);


                conn.Open();
                insert.ExecuteNonQuery();
                conn.Close();
*/

                Auth_Done = true;

                //post link to church website on current user's timeline
                // client.Post("/me/feed", new { link = "www.unionpentecostalchurch.com" });




            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Auth_Done)
            {
                //post link to church website on current user's timeline
                client.Post("/me/feed", new { link = "www.unionpentecostalchurch.com" });
                string message = "A link to unionpentecostalchurch.com has been posted to you Facebook timeline.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
            else
            {
                string message = "You must login using Facebook before posting.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
        }

        protected void FB_Login_Click(object sender, EventArgs e)
        {
            if (Auth_Done == false)
            {
                CheckAuth();
            }
            else
            {
                string message = "You are already logged in.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
        }
    }

    
}