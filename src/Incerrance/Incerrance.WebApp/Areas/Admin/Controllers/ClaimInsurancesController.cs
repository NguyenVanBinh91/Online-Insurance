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
    public class ClaimInsurancesController : BaseController
    {
        private IncerranceDbContext db = new IncerranceDbContext();

        // GET: Admin/ClaimInsurances
        public ActionResult Index()
        {
            var claimInsurances = db.ClaimInsurances.Include(c => c.Registration_Insurance);
            return View(claimInsurances.ToList());
        }

        // GET: Admin/ClaimInsurances/Details/5
        public ActionResult Details(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ClaimInsurance claimInsurance = db.ClaimInsurances.Find(id);
            if (claimInsurance == null)
            {
                return HttpNotFound();
            }
            return View(claimInsurance);
        }
     

        // GET: Admin/ClaimInsurances/Edit/5
        public ActionResult Edit(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ClaimInsurance claimInsurance = db.ClaimInsurances.Find(id);
            if (claimInsurance == null)
            {
                return HttpNotFound();
            }
            ViewBag.Registration_InsuranceId = new SelectList(db.Registration_Insurance, "Id", "FullName", claimInsurance.Registration_InsuranceId);
            return View(claimInsurance);
        }

        // POST: Admin/ClaimInsurances/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Registration_InsuranceId,UserId,Reply,Description,Status,ModifiedBy,CreatedOn,CreatedBy,ModifiedOn")] ClaimInsurance claimInsurance)
        {
            if (ModelState.IsValid)
            {
                claimInsurance.Status = "Responded";
                AuditTable.UpdateAuditFields(claimInsurance);
                var session = (UserLogin)Session[CommonConstants.USER_SESSION];
                claimInsurance.ModifiedBy = session.UserName;
                db.Entry(claimInsurance).State = EntityState.Modified;
                db.SaveChanges();
                SetAlert("Responded successful", "success");
                return RedirectToAction("Index");
            }
            ViewBag.Registration_InsuranceId = new SelectList(db.Registration_Insurance, "Id", "FullName", claimInsurance.Registration_InsuranceId);
            return View(claimInsurance);
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
