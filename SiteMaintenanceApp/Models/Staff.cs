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
    
    public partial class Staff
    {
        public int id { get; set; }
        public int siteCode { get; set; }
        public string accountManager { get; set; }
        public string supportRep { get; set; }
    
        public virtual SiteAccountManager SiteAccountManager { get; set; }
        public virtual SiteCodeNumber SiteCodeNumber { get; set; }
    }
}
