using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SiteMaintenanceApp.Models
{
    public class MaintenanceTimesViewModel
    {
        public List<CallLog> allCallLogs { get; set; }
        public List<Site> allSites { get; set; }

        public MaintenanceTimesViewModel(SiteMantenanceEntities siteMaintenanceDb)
        {
            allCallLogs = siteMaintenanceDb.CallLogs.OrderByDescending(model => model.lastMaintenanceCall).Where(model => model.lastMaintenanceCall != null).Distinct().ToList();
            allSites = siteMaintenanceDb.Sites.ToList();
        }
       
    }
}