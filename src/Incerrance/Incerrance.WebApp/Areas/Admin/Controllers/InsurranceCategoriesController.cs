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

namespace Incerrance.WebApp.Areas.Admin.Controllers
{
    public class InsurranceCategoriesController : BaseController
    {
        private IncerranceDbContext db = new IncerranceDbContext();

        // GET: Admin/InsurranceCategories
        public ActionResult Index()
        {
            CountMessage();
            CountProduct();
            CountOrder();
            return View(db.InsurranceCategories.ToList());
        }

        // GET: Admin/InsurranceCategories/Details/5
        public ActionResult Details(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            InsurranceCategory insurranceCategory = db.InsurranceCategories.Find(id);
            if (insurranceCategory == null)
            {
                return HttpNotFound();
            }
            return View(insurranceCategory);
        }

        // GET: Admin/InsurranceCategories/Create
        public ActionResult Create()
        {
            CountMessage();
            CountProduct();
            CountOrder();
            return View();
        }

        // POST: Admin/InsurranceCategories/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(InsurranceCategory insurranceCategory)
        {
            if (ModelState.IsValid)
            {
                insurranceCategory.Id = Guid.NewGuid();
                AuditTable.InsertAuditFields(insurranceCategory);
                var session = (UserLogin)Session[CommonConstants.USER_SESSION];
                insurranceCategory.CreatedBy = session.UserName;
                db.InsurranceCategories.Add(insurranceCategory);
                db.SaveChanges();
                SetAlert("New successfully added", "success");
                return RedirectToAction("Index");
            }

            return View(insurranceCategory);
        }

        // GET: Admin/InsurranceCategories/Edit/5
        public ActionResult Edit(Guid? id)
        {
            CountMessage();
            CountProduct();
            CountOrder();
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            InsurranceCategory insurranceCategory = db.InsurranceCategories.Find(id);
            if (insurranceCategory == null)
            {
                return HttpNotFound();
            }
            return View(insurranceCategory);
        }

        // POST: Admin/InsurranceCategories/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(InsurranceCategory insurranceCategory)
        {
            if (ModelState.IsValid)
            {
                AuditTable.UpdateAuditFields(insurranceCategory);
                var session = (UserLogin)Session[CommonConstants.USER_SESSION];
                insurranceCategory.ModifiedBy = session.UserName;
                db.Entry(insurranceCategory).State = EntityState.Modified;
                db.SaveChanges();
                SetAlert("Update successful", "success");
                return RedirectToAction("Index");
            }
            return View(insurranceCategory);
        }

        // GET: Admin/InsurranceCategories/Delete/5
        public ActionResult Delete(Guid? id)
        {
            var existProduct = db.InsurranceCategories.Where(x => x.Id == id && x.IsDeleted == false);
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            InsurranceCategory insurranceCategory = db.InsurranceCategories.Find(id);
            if (insurranceCategory == null)
            {
                return HttpNotFound();
            }
            return View(insurranceCategory);
        }

        // POST: Admin/InsurranceCategories/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(Guid id)
        {
            InsurranceCategory insurranceCategory = db.InsurranceCategories.Find(id);
            db.InsurranceCategories.Remove(insurranceCategory);
            insurranceCategory.IsDeleted = true;
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
