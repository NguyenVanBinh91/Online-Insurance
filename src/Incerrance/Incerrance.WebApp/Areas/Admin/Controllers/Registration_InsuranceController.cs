using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Incerrance.Common;
using Incerrance.Model.DAL;
using Incerrance.WebApp.Common;
using PagedList;

namespace Incerrance.WebApp.Areas.Admin.Controllers
{
    public class Registration_InsuranceController : BaseController
    {
        private IncerranceDbContext db = new IncerranceDbContext();

        // GET: Admin/Registration_Insurance
        /*public ActionResult Index()
        {
            var registration_Insurance = db.Registration_Insurance.Include(r => r.Insurrance);
            return View(registration_Insurance.ToList());
        }*/
        public ActionResult Index(string searchString)
        {
            CountMessage();
            CountProduct();
            CountOrder();
            var registration_Insurance = db.Registration_Insurance.Include(r => r.Insurrance);

            ViewBag.CurrentFilter = searchString;

            if (!String.IsNullOrEmpty(searchString))
            {
                registration_Insurance = registration_Insurance.Where(s => s.CMND.Contains(searchString) || s.FullName.ToString().Contains(searchString)
                || s.Phone.ToString().Contains(searchString) || s.Insurrance.Name.Contains(searchString));
            }
            ViewBag.SearchString = searchString;
            registration_Insurance.OrderBy(s => s.RegistrationDate);
            return View(registration_Insurance.ToList());
        }
        // GET: Admin/Registration_Insurance/Details/5
        public ActionResult Details(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Registration_Insurance registration_Insurance = db.Registration_Insurance.Find(id);
            if (registration_Insurance == null)
            {
                return HttpNotFound();
            }
            return View(registration_Insurance);
        }

        // GET: Admin/Registration_Insurance/Edit/5
        public ActionResult Edit(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Registration_Insurance registration_Insurance = db.Registration_Insurance.Find(id);
            if (registration_Insurance == null)
            {
                return HttpNotFound();
            }
            ViewBag.InsurranceId = new SelectList(db.Insurrances, "Id", "InsurranceCode", registration_Insurance.InsurranceId);
            return View(registration_Insurance);
        }

        // POST: Admin/Registration_Insurance/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Registration_Insurance registration_Insurance)
        {
            if (ModelState.IsValid)
            {
                AuditTable.UpdateAuditFields(registration_Insurance);
                var session = (UserLogin)Session[CommonConstants.USER_SESSION];
                registration_Insurance.ModifiedBy = session.UserName;
                db.Entry(registration_Insurance).State = EntityState.Modified;
                db.SaveChanges();
                SetAlert("Update successful", "success");
                return RedirectToAction("Index");
            }
            ViewBag.InsurranceId = new SelectList(db.Insurrances, "Id", "InsurranceCode", registration_Insurance.InsurranceId);
            return View(registration_Insurance);
        }

        // GET: Admin/Registration_Insurance/Delete/5
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
