using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SiteMaintenanceApp.Models
{
    public class ServicesViewModel
    {
        public List<ServiceTier> allServiceTiers { get; set; }
        public List<Staff> allStaff { get; set; }
        public List<Territory> allTerritories { get; set; }
        public List<Site> allSites { get; set; }
        public String territoryName { get; set; }

        public ServicesViewModel(SiteMantenanceEntities siteMaintenanceDb)
        {
            allServiceTiers = siteMaintenanceDb.ServiceTiers.OrderBy(model => model.serviceTierType).ToList();
            allStaff = siteMaintenanceDb.Staffs.ToList();
            allTerritories = siteMaintenanceDb.Territories.ToList();
            allSites = siteMaintenanceDb.Sites.ToList();
        }


        public Territory FindTerrritory(ServiceTier currentService, List<Staff> totalStaff, List<Territory> totalTerritories)
        {
            Staff currentStaff = totalStaff.FirstOrDefault(model => model.siteCode == currentService.siteCode);
            Territory currentTerritory = totalTerritories.FirstOrDefault(model => model.SiteAccountManager == currentStaff.SiteAccountManager);
            return currentTerritory;
        }
    }
}