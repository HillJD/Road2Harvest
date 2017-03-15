using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace upc_website.Helpers
{
    
    public class CarouselItem
    {
        private string picName;
        private string picPath;
        private string color;
        private DateTime beginDate;
        private DateTime endDate;
        private string lineOneCaption;
        private string lineTwoCaption;

        
        public string PicName
        {
            get { return picName; }
            set { picName = value; }
        }

        public string PicPath
        {
            get { return picPath; }
            set { picPath = value; }
        }
        public string Color
        {
            get { return color; }
            set { color = value; }
        }
        public DateTime BeginDate
        {
            get { return beginDate; }
            set { beginDate = value; }
        }
        public DateTime EndDate
        {
            get { return endDate; }
            set { endDate = value; }
        }
        public string LineOneCaption
        {
            get { return lineOneCaption; }
            set { lineOneCaption = value; }
        }
        public string LineTwoCaption
        {
            get { return lineTwoCaption; }
            set { lineTwoCaption = value; }
        }
    }
}

