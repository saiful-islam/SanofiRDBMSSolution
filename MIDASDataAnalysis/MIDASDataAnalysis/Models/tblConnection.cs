//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class tblConnection
    {
        public tblConnection()
        {
            this.MapUserConnections = new HashSet<MapUserConnection>();
        }
    
        public int ConnId { get; set; }
        public string ConnectionName { get; set; }
        public int DBServerId { get; set; }
        public int DBId { get; set; }
        public int DBSchemaId { get; set; }
        public int DBTableId { get; set; }
    
        public virtual ICollection<MapUserConnection> MapUserConnections { get; set; }
        public virtual tblDBName tblDBName { get; set; }
        public virtual tblDBSchema tblDBSchema { get; set; }
        public virtual tblDBServer tblDBServer { get; set; }
        public virtual tblDBTable tblDBTable { get; set; }
    }
}
