using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Escape_Math.Models;
using Escape_Math.ViewModels;

namespace Escape_Math.Controllers
{
    public class ForoController : Controller
    {
        EscapeMathEntities3 _ctx = new EscapeMathEntities3();
        // GET: Foro
        public ActionResult listar()
        {
            return View();
        }

        public JsonResult GetListPost()
        {
            var ListadoForos = ListarForos();
            return Json(ListadoForos, JsonRequestBehavior.AllowGet);

        }

        public List <PostViewModel> ListarForos()
        {
            try
            {
                var data = _ctx.Database.SqlQuery<PostViewModel>("SP_LISTAR_POST").ToList();
                return data;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}