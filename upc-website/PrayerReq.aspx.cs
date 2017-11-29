using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace upc_website
{
    public partial class PrayerReq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Submit1_Click(object sender, EventArgs e)
        {
            string message = "Do you want to Submit?";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("return confirm('");
            sb.Append(message);
            sb.Append("');");
            ClientScript.RegisterOnSubmitStatement(this.GetType(), "alert", sb.ToString());
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            
            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add("michael@creekviewfarms.net");
            mail.From = new MailAddress("upcprayerrequests@gmail.com", "UPC_Prayer_Requests", System.Text.Encoding.UTF8);
            mail.Subject = "This mail is send from asp.net application";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = "This is Email Body Text";
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            SmtpClient client = new SmtpClient();
            client.Credentials = new System.Net.NetworkCredential("upcprayerrequests@gmail.com", "1101union");
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            try
            {
                client.Send(mail);
                Page.RegisterStartupScript("UserMsg", "<script>alert('Successfully Send...');if(alert){ window.location='SendMail.aspx';}</script>");
            }
            catch (Exception ex)
            {
                Exception ex2 = ex;
                string errorMessage = string.Empty;
                while (ex2 != null)
                {
                    errorMessage += ex2.ToString();
                    ex2 = ex2.InnerException;
                }
                Page.RegisterStartupScript("UserMsg", "<script>alert('Sending Failed...');if(alert){ window.location='SendMail.aspx';}</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage message = new MailMessage();
            SmtpClient smtpClient = new SmtpClient();
            string msg = string.Empty;
            string emailbody = string.Empty;
            if (PastorYes.Checked) emailbody = "Contact Requested \n " + Email.Text + "\n" + "\n" + "PRAYER REQUEST: \n" + PrayerRequest.Text; 
            else emailbody = "No Contact Requested \n" +  "\n" + " PRAYER REQUEST: \n " + PrayerRequest.Text; 
            try
            {
                MailAddress fromAddress = new MailAddress("prayer@unionpentecostalchurch.com");
                message.From = fromAddress;
                message.To.Add("michael@creekviewfarms.net");
                message.Subject = "Prayer Request From " + Name.Text;
                message.IsBodyHtml = true;
                message.Body = emailbody ;
                smtpClient.Host = "smtp.unionpentecostalchurch.com";   //smtp client
                smtpClient.Port = 465;
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("prayer@unionpentecostalchurch.com", "6WRe@M#e)}k3Zz=^&u:");

                smtpClient.Send(message);
                msg = "Successful&lt;BR>";
                Page.RegisterStartupScript("UserMsg", "<script>alert('Your Request Has Been Submitted.');if(alert){ window.location='PrayerReq.aspx';}</script>");

            }
            catch (Exception ex)
            {
                msg = ex.Message;
                

                Page.RegisterStartupScript("UserMsg", "<script>alert('Oops...Looks like we are having some problems. Please try again later.');</script>");
            }
            
        }
    
    }
}