﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace upc_website.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DB_110695_carouselEntities : DbContext
    {
        public DB_110695_carouselEntities()
            : base("name=DB_110695_carouselEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<ArticleGrp> ArticleGrps { get; set; }
        public virtual DbSet<Article> Articles { get; set; }
        public virtual DbSet<Book> Books { get; set; }
        public virtual DbSet<carousel_images> carousel_images { get; set; }
        public virtual DbSet<Chapter> Chapters { get; set; }
        public virtual DbSet<Event> Events { get; set; }
        public virtual DbSet<Series> Series { get; set; }
        public virtual DbSet<SermonAudio> SermonAudios { get; set; }
    }
}
