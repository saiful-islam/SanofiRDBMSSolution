﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MIDASDataAnalysis.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SQLDataViewerAuthenticationEntities : DbContext
    {
        public SQLDataViewerAuthenticationEntities()
            : base("name=SQLDataViewerAuthenticationEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<MapUserConnection> MapUserConnections { get; set; }
        public DbSet<tblConnection> tblConnections { get; set; }
        public DbSet<tblDBName> tblDBNames { get; set; }
        public DbSet<tblDBSchema> tblDBSchemas { get; set; }
        public DbSet<tblDBServer> tblDBServers { get; set; }
        public DbSet<tblDBTable> tblDBTables { get; set; }
        public DbSet<UserProfile> UserProfiles { get; set; }
    }
}
