using Incerrance.Common;
using Incerrance.Model.DAL;
using Incerrance.Model.Dao;
using Incerrance.WebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace Incerrance.WebApp.Controllers
{
    public class HomesController : BaseController
    {
        private IncerranceDbContext db = new IncerranceDbContext();
        private const string CartSession = "CartSession";

        // GET: Homes
        public ActionResult Index()
        {
            return View();
        }
        // Footer
        [ChildActionOnly]
        public ActionResult Footer()
        {
            var result = db.Footer.SingleOrDefault(x => x.IsDeleted == false);
            return PartialView(result);
        }
        //Main menu
        [ChildActionOnly]
        public ActionResult MainMenu()
        {
            List<Menu> dsmenu = new List<Menu>();
            dsmenu = db.Menu.Where(x => x.ParentId == null && x.IsDeleted == false).OrderBy(x => x.DisplayOrder).ToList();
            return PartialView(dsmenu);
        }
        [ChildActionOnly]
        public ActionResult SubMenu(int ParentId)
        {
            List<Menu> lst = new List<Menu>();
            lst = db.Menu.Where(x => x.ParentId == ParentId && x.IsDeleted == false).OrderBy(x => x.DisplayOrder).ToList();
            ViewBag.Count = lst.Count();
            return PartialView(lst);
        }
        //Slide
        [ChildActionOnly]
        public PartialViewResult Slide()
        {
            List<Slide> getSlide = new List<Slide>();
            getSlide = db.Slide.Where(x => x.IsDeleted == false).ToList();
            ViewBag.Count = getSlide.Count();
            return PartialView(getSlide);
        }
        //Footer -- Contact
        [ChildActionOnly]
        public ActionResult Contact()
        {
            List<Contact> list = new List<Contact>();
            list = db.Contact.Where(x => x.IsDeleted == false).ToList();
            ViewBag.Count = list.Count();
            return PartialView(list);
        }
        //Payment history
        public ActionResult HistoryPayment()
        {
            var session = (UserLogin)Session[CommonConstants.USER_SESSION];
            if (session != null)
            {
                return View(db.Registration_Insurance.Where(x => x.UserId == session.UserId).ToList());
            }
            else
            {
                SetAlert("You need to login to do this", "warning");
                return Redirect("/dang-nhap");
            }
        }
    }
}