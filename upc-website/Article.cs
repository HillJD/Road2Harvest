//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace upc_website
{
    using System;
    using System.Collections.Generic;
    
    public partial class Article
    {
        public int ArticleID { get; set; }
        public string ArticleGrpID { get; set; }
        public string Author { get; set; }
        public Nullable<System.DateTime> PubDt { get; set; }
        public string Title { get; set; }
        public string SubTitle { get; set; }
        public string ImageLink { get; set; }
        public string Data { get; set; }
    
        public virtual ArticleGrp ArticleGrp { get; set; }
    }
}
