using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Incerrance.Model.DAL;
using Incerrance.WebApp.Common;
using Incerrance.Common;
using PagedList;

namespace Incerrance.WebApp.Areas.Admin.Controllers
{
    public class InsurrancesController : BaseController
    {
        private IncerranceDbContext db = new IncerranceDbContext();

        // GET: Admin/Insurrances
        public ActionResult Index()
        {
            CountMessage();
            CountProduct();
            CountOrder();
            var insurrances = db.Insurrances.Include(i => i.InsurranceCategory).Where(s=>s.IsDeleted == false);
            return View(insurrances.ToList());
        }

        // GET: Admin/Insurrances/Details/5
        public ActionResult Details(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Insurrance insurrance = db.Insurrances.Find(id);
            if (insurrance == null)
            {
                return HttpNotFound();
            }
            return View(insurrance);
        }

        // GET: Admin/Insurrances/Create
        public ActionResult Create()
        {
            CountMessage();
            CountProduct();
            CountOrder();
            ViewBag.InsurranceCategoryId = new SelectList(db.InsurranceCategories, "Id", "Name");
            return View();
        }

        // POST: Admin/Insurrances/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Insurrance insurrance)
        {
            if (ModelState.IsValid)
            {
                insurrance.Id = Guid.NewGuid();
                var session = (UserLogin)Session[CommonConstants.USER_SESSION];
                AuditTable.InsertAuditFields(insurrance);
                insurrance.CreatedBy = session.UserName;
                db.Insurrances.Add(insurrance);
                db.SaveChanges();
                SetAlert("New successfully added", "success");
                return RedirectToAction("Index");
            }

            ViewBag.InsurranceCategoryId = new SelectList(db.InsurranceCategories, "Id", "Name", insurrance.InsurranceCategoryId);
            return View(insurrance);
        }

        // GET: Admin/Insurrances/Edit/5
        public ActionResult Edit(Guid? id)
        {
            CountMessage();
            CountProduct();
            CountOrder();
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Insurrance insurrance = db.Insurrances.Find(id);
            if (insurrance == null)
            {
                return HttpNotFound();
            }
            ViewBag.InsurranceCategoryId = new SelectList(db.InsurranceCategories, "Id", "Name", insurrance.InsurranceCategoryId);
            return View(insurrance);
        }

        // POST: Admin/Insurrances/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Insurrance insurrance)
        {
            if (ModelState.IsValid)
            {
                AuditTable.UpdateAuditFields(insurrance);
                var session = (UserLogin)Session[CommonConstants.USER_SESSION];
                insurrance.ModifiedBy = session.UserName;
                db.Entry(insurrance).State = EntityState.Modified;
                db.SaveChanges();
                SetAlert("Update successful", "success");
                return RedirectToAction("Index");
            }
            ViewBag.InsurranceCategoryId = new SelectList(db.InsurranceCategories, "Id", "Name", insurrance.InsurranceCategoryId);
            return View(insurrance);
        }

        // GET: Admin/Insurrances/Delete/5
        public ActionResult Delete(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Insurrance insurrance = db.Insurrances.Find(id);
            if (insurrance == null)
            {
                return HttpNotFound();
            }
            return View(insurrance);
        }

        // POST: Admin/Insurrances/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(Guid id)
        {
            Insurrance insurrance = db.Insurrances.Find(id);
            insurrance.IsDeleted = true;
            db.SaveChanges();
            SetAlert("Deleted successfully", "success");
            return RedirectToAction("Index");
        }

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
