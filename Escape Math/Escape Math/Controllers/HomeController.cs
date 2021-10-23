using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Escape_Math.Models;


namespace Escape_Math.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            

            return View();
        }
        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult Personas()
        {
            using (var ctx = new EscapeMathEntities3())
            {
                var personas = ctx.tUsuarios.ToList();
                return View(personas);
            }

            
        }

    }
}