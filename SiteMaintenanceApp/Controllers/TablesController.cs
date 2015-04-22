using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SiteMaintenanceApp.Models;

namespace SiteMaintenanceApp.Controllers
{
    public class TablesController : Controller
    {
        SiteMantenanceEntities siteMaintenanceDb;

        public TablesController()
        {
            this.siteMaintenanceDb = new SiteMantenanceEntities();
        }

        //
        // GET: /Tables/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Services()
        {
            ServicesViewModel servicesViewModelData = new ServicesViewModel(siteMaintenanceDb);
            return View(servicesViewModelData);
        }

        public ActionResult MaintenanceTimes()
        {
            MaintenanceTimesViewModel maintenanceViewModelData = new MaintenanceTimesViewModel(siteMaintenanceDb);
            return View(maintenanceViewModelData);
        }

    }
}
