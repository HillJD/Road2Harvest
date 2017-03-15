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

        public CarouselItem(string picName, string picPath, string color, DateTime beginDate, DateTime endDate, string lineOneCaption, string lineTwoCaption)
        {
            this.picName = picName;
            this.picPath = picPath;
            this.color = color;
            this.beginDate = beginDate;
            this.endDate = endDate;
            this.lineOneCaption = lineOneCaption;
            this.lineTwoCaption = lineTwoCaption;
        }

        public string _picName
        {
            get { return picName; }
            set { picName = value; }
        }

        public string _picPath
        {
            get { return picPath; }
            set { picPath = value; }
        }
        public string _color
        {
            get { return color; }
            set { color = value; }
        }
        public DateTime _beginDate
        {
            get { return beginDate; }
            set { beginDate = value; }
        }
        public DateTime _endDate
        {
            get { return endDate; }
            set { endDate = value; }
        }
        public string _lineOneCaption
        {
            get { return lineOneCaption; }
            set { lineTwoCaption = value; }
        }
        public string _lineTwoCaption
        {
            get { return lineTwoCaption; }
            set { lineTwoCaption = value; }
        }
    }
}

