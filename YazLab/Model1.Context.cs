﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace YazLab
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class UrunlerEntities2 : DbContext
    {
        public UrunlerEntities2()
            : base("name=UrunlerEntities2")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<tbl_markalar> tbl_markalar { get; set; }
        public virtual DbSet<tbl_modeller> tbl_modeller { get; set; }
        public virtual DbSet<tbl_siteler> tbl_siteler { get; set; }
        public virtual DbSet<tbl_urunAciklama> tbl_urunAciklama { get; set; }
        public virtual DbSet<tbl_urunler> tbl_urunler { get; set; }
        public virtual DbSet<tbl_admin> tbl_admin { get; set; }
    
        public virtual ObjectResult<Nullable<int>> MODELLER()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("MODELLER");
        }
    }
}