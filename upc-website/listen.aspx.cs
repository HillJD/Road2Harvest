using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace upc_website
{
    public partial class listen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool DayCheck = false;
            bool TimeCheck = false;
            bool DaylightSavings = false;
           


            //TimeSpan DaytonOffset = new TimeSpan(4, 0, 0);
            DateTimeOffset DaytonTime = new DateTimeOffset(DateTime.UtcNow);
            //DaytonTime = DaytonTime.Subtract(DaytonOffset);

            TimeZoneInfo Tz = TimeZoneInfo.FindSystemTimeZoneById("Eastern Standard Time");
            DaytonTime = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow,Tz);

            String Day = DaytonTime.DayOfWeek.ToString();
            String Time = DaytonTime.TimeOfDay.ToString();

            TimeSpan SundayStart1 = new TimeSpan(11, 00, 00);
            TimeSpan SundayStart2 = new TimeSpan(18, 00, 00);
            TimeSpan SundayEnd1 = new TimeSpan(12, 15, 00);
            TimeSpan SundayEnd2 = new TimeSpan(19, 30, 00);
            TimeSpan WednesdayStart = new TimeSpan(19, 30, 00);
            TimeSpan WednesdayEnd = new TimeSpan(20, 30, 00);

            DateTime CustomTimeStart = new DateTime(2018, 02, 09, 19, 30, 00);
            DateTime CustomTimeEnd = new DateTime(2018, 02, 09, 21, 00, 00);

            DateTime CustomTimeStart1 = new DateTime(2018, 02, 10, 10, 00, 00);
            DateTime CustomTimeEnd1 = new DateTime(2018, 02, 10, 11, 30, 00);

            if (Day == "Wednesday")
            {
                DayCheck = true;
                if (DaytonTime.TimeOfDay >= WednesdayStart && DaytonTime.TimeOfDay <= WednesdayEnd) TimeCheck = true;
                
            }
            else if (Day == "Sunday")
            {
                DayCheck = true;
                if (DaytonTime.TimeOfDay >= SundayStart1 && DaytonTime.TimeOfDay <= SundayEnd1) TimeCheck = true;
                else if (DaytonTime.TimeOfDay >= SundayStart2 && DaytonTime.TimeOfDay <= SundayEnd2) TimeCheck = true;
            }

            if (DaytonTime.Date == CustomTimeStart.Date)
            {
                DayCheck = true;
                if (DaytonTime.TimeOfDay >= CustomTimeStart.TimeOfDay && DaytonTime.TimeOfDay <= CustomTimeEnd.TimeOfDay) TimeCheck = true;


            }
            if (DaytonTime.Date == CustomTimeStart1.Date)
            {
                DayCheck = true;
                if (DaytonTime.TimeOfDay >= CustomTimeStart1.TimeOfDay && DaytonTime.TimeOfDay <= CustomTimeEnd1.TimeOfDay) TimeCheck = true;


            }


            if (DayCheck && TimeCheck) ImageButton1.ImageUrl = "~/images/live stream.jpg";

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://unionpentecostal.dyndns.org:88/broadwave.mp3?src=1&rate=1&ref=http%3A%2F%2Funionpentecostal.dyndns.org%3A88%2F");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("archives.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://tunein.com/radio/Union-Pentecostal-Church-s197173/");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.youtube.com/channel/UC0C_tCXvEb2yrdNZ5rVm-MQ/live");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.facebook.com/unionpentecostalchurch");
        }
    }
}