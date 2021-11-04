using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Escape_Math.ViewModels
{
    public class PostViewModel
    {
        public int  idPost { get; set; }
        public string Nombre_post { get; set; }
        public string Contenido_post { get; set; }
        public DateTime Fecha { get; set; }

    }
}