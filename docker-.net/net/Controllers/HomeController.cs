using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Agenda.Models;

namespace Agenda.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Descripcion de la pagina.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Contactos";

            return View();
        }
     
        public ActionResult Donaciones()
        {
            ViewBag.Message = "Donaciones";

            return View();
        }
        public ActionResult Galeria()
        {
            ViewBag.Message = "Galeria";

            return View();
        }
        [HttpPost]
        public ActionResult SendInfo(string nombreIn, string correoIn)
        {
            ModelFacade facade = new ModelFacade();
            bool res = facade.AddInfo(nombreIn, correoIn);

            if (res)
            {
                ViewData["Message"] = "¡DE ACUERDO! ¡Todos sus datos fueron guardados!";
            }
            return View();
        }
    }
}