using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SiteMaintenanceApp.Models;

namespace SiteMaintenanceApp.Controllers
{
    public class MapController : Controller
    {
        SiteMantenanceEntities siteMaintenanceDb;

        public MapController()
        {
            this.siteMaintenanceDb = new SiteMantenanceEntities();
        }

        //
        // GET: /Map/

        public ActionResult Index()
        {
            return View();
        }

    }
}
