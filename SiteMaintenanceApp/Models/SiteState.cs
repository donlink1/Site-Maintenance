//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SiteMaintenanceApp.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class SiteState
    {
        public SiteState()
        {
            this.Levels = new HashSet<Level>();
            this.Sites = new HashSet<Site>();
        }
    
        public string state { get; set; }
    
        public virtual ICollection<Level> Levels { get; set; }
        public virtual ICollection<Site> Sites { get; set; }
    }
}
