using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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

        public ActionResult InsertarPost()
        {
            return View();
        }


        public JsonResult GetListPost()
        {
            var ListadoForos = ListarForos();
            return Json(ListadoForos, JsonRequestBehavior.AllowGet);

        }

        [HttpPost]
        public JsonResult PostInsertarPostt(PostViewModel model)
        {
            var responseData = InsertarPostt(model.Nombre_post, model.Contenido_post);
            return Json(responseData, JsonRequestBehavior.AllowGet);
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



        public RespuestaSqlViewModels InsertarPostt(string nombre, string contenido)
        {
            try
            {
                var data = _ctx.Database.SqlQuery<RespuestaSqlViewModels>("SP_INSERTAR_POST @Nombre_post, @Contenido_post",
                    new SqlParameter("@Nombre_post", nombre),
                    new SqlParameter("@Contenido_post", contenido)).FirstOrDefault();
                return data;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}