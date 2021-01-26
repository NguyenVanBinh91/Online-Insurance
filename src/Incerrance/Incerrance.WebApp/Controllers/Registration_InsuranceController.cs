using System;
using System.Configuration;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using Incerrance.Common;
using Incerrance.Model.DAL;
using Incerrance.WebApp.Common.NganLuongAPI;

namespace Incerrance.WebApp.Controllers
{
	public class Registration_InsuranceController : BaseController
	{
		private IncerranceDbContext db = new IncerranceDbContext();
		private string merchantId = ConfigurationManager.AppSettings["MerchantID"];
		private string merchantPassword = ConfigurationManager.AppSettings["MerchantPassword"];
		private string merchantEmail = ConfigurationManager.AppSettings["MerchantEmail"];

		// GET: Registration_Insurance
		public ActionResult Index(Guid insurranceId)
		{
			if (Session[CommonConstants.USER_SESSION] != null)
			{
				if (insurranceId == null)
				{
					return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
				}
				Insurrance insurrance = db.Insurrances.Find(insurranceId);
				if (insurrance == null)
				{
					return HttpNotFound();
				}
				return View(insurrance);
			}
			else
			{
				SetAlert("You need to login to do this", "warning");
				return Redirect("/dang-nhap");
			}
		}

		[HttpPost]
		public ActionResult Payment(Guid InsuranceId, string FullName, DateTime DateOfBirth, string Phone, string Address, string CMND, string Email, string paymentMethod, string bankcode)
		{
			var session = (UserLogin)Session[CommonConstants.USER_SESSION];

			var insurance = db.Insurrances.Find(InsuranceId);
			var registrationInsurance = new Registration_Insurance();
			registrationInsurance.Id = Guid.NewGuid();
			registrationInsurance.InsurranceId = InsuranceId;
			registrationInsurance.UserId = session.UserId;
			registrationInsurance.FullName = FullName;
			registrationInsurance.DateOfBirth = DateOfBirth;
			registrationInsurance.Address = Address;
			registrationInsurance.Phone = Phone;
			registrationInsurance.Email = Email;
			registrationInsurance.RegistrationDate = DateTime.Now;
			registrationInsurance.ExpirationDate = DateTime.Now.AddMonths(Convert.ToInt32(insurance.InsurancePeriod));
			registrationInsurance.TotalMoney = Convert.ToInt32(insurance.Price);
			registrationInsurance.CMND = CMND;
			registrationInsurance.Status = "Unconfimred";
			registrationInsurance.RegistrationInsuranceCode = DateTime.Now.ToString() + CMND + insurance.Price.ToString();


			if (paymentMethod == "CASH") //Thanh toán offline
			{
				db.Registration_Insurance.Add(registrationInsurance);
				db.SaveChanges();
				string content = System.IO.File.ReadAllText(Server.MapPath("~/Content/Client/neworder.html"));

				content = content.Replace("{{CustomerName}}", registrationInsurance.FullName);
				content = content.Replace("{{Phone}}", registrationInsurance.Phone);
				content = content.Replace("{{Email}}", registrationInsurance.Email);
				content = content.Replace("{{Address}}", registrationInsurance.Address);
				content = content.Replace("{{Total}}", registrationInsurance.TotalMoney.ToString());
				var toEmail = ConfigurationManager.AppSettings["ToEmailAddress"].ToString();

				new MailHelper().SendMail(registrationInsurance.Email, "Application form from insurance provider", content);
				new MailHelper().SendMail(toEmail, "Application form from insurance provider", content);
				SetAlert("You have just made a successful purchase. Our staff will contact you within a few minutes to confirm your order.", "success");
			}
			else
			{
				var currentLink = ConfigurationManager.AppSettings["CurrentLink"];
				RequestInfo info = new RequestInfo();
				info.Merchant_id = merchantId;
				info.Merchant_password = merchantPassword;
				info.Receiver_email = merchantEmail;

				info.cur_code = "vnd";
				info.bank_code = bankcode;

				info.Order_code = registrationInsurance.Id.ToString();
				info.Total_amount = registrationInsurance.TotalMoney.ToString();
				info.fee_shipping = "0";
				info.Discount_amount = "0";
				info.order_description = "Payment orders";
				info.return_url = currentLink + "xac-nhan-don-hang";
				info.cancel_url = currentLink + "huy-don-hang";

				info.Buyer_fullname = registrationInsurance.FullName;
				info.Buyer_email = registrationInsurance.Email;
				info.Buyer_mobile = registrationInsurance.Phone;

				APICheckoutV3 objNLChecout = new APICheckoutV3();

				ResponseInfo result = objNLChecout.GetUrlCheckout(info, paymentMethod);

				string content = System.IO.File.ReadAllText(Server.MapPath("~/Content/Client/neworder.html"));

				content = content.Replace("{{CustomerName}}", registrationInsurance.FullName);
				content = content.Replace("{{Phone}}", registrationInsurance.Phone);
				content = content.Replace("{{Email}}", registrationInsurance.Email);
				content = content.Replace("{{Address}}", registrationInsurance.Address);
				content = content.Replace("{{Total}}", registrationInsurance.TotalMoney.ToString());
				var toEmail = ConfigurationManager.AppSettings["ToEmailAddress"].ToString();

				new MailHelper().SendMail(registrationInsurance.Email, "Application form from insurance provider", content);
				new MailHelper().SendMail(toEmail, "Application form from insurance provider", content);
				//Check thanh toán online
				if (result.Error_code == "00")
				{
					registrationInsurance.Status = "Paid online";
					db.Registration_Insurance.Add(registrationInsurance);
					db.SaveChanges();
					SetAlert("Payment success", "success");
					return Redirect(result.Checkout_url);
				}
				else
				{
					SetAlert("Error!", result.Description);
					return Redirect("/gio-hang");
				}
			}
			return Redirect("/");
		}

		public ActionResult ConfirmOrder()
		{
			string Token = Request["token"];
			RequestCheckOrder info = new RequestCheckOrder();
			info.Merchant_id = merchantId;
			info.Merchant_password = merchantPassword;
			info.Token = Token;
			APICheckoutV3 objNLChecout = new APICheckoutV3();
			ResponseCheckOrder result = objNLChecout.GetTransactionDetail(info);
			if (result.errorCode == "00")
			{
				ViewBag.IsSuccess = true;
				ViewBag.Result = "Payment success. We will contact you as soon as possible!";
			}
			else
			{
				ViewBag.IsSuccess = false;
				ViewBag.Result = "An error occurred. Please contact admin.";

			}
			return View();
		}

		public ActionResult CancelOrder()
		{
			return View();
		}


		public ActionResult ExtensionOfInsurance(Guid reginsuranceId)
		{
			if (Session[CommonConstants.USER_SESSION] != null)
			{
				if (reginsuranceId == null)
				{
					return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
				}
				Registration_Insurance registration_Insurance = db.Registration_Insurance.Find(reginsuranceId);
				if (registration_Insurance == null)
				{
					return HttpNotFound();
				}
				return View(registration_Insurance);
			}
			else
			{
				SetAlert("You need to login to do this", "warning");
				return Redirect("/dang-nhap");
			}

		}

		[HttpPost]
		public ActionResult PaymentExtensionOfInsurance(Guid RegistrationInsuranceId, string paymentMethod, string bankcode)
		{
			Registration_Insurance registration_Insurance = db.Registration_Insurance.Find(RegistrationInsuranceId);
			registration_Insurance.ExpirationDate = DateTime.Now.AddMonths(Convert.ToInt32(registration_Insurance.Insurrance.InsurancePeriod));
			registration_Insurance.Status = "Paid online";

			var currentLink = ConfigurationManager.AppSettings["CurrentLink"];
			RequestInfo info = new RequestInfo();
			info.Merchant_id = merchantId;
			info.Merchant_password = merchantPassword;
			info.Receiver_email = merchantEmail;

			info.cur_code = "vnd";
			info.bank_code = bankcode;

			info.Order_code = registration_Insurance.Id.ToString();
			info.Total_amount = registration_Insurance.TotalMoney.ToString();
			info.fee_shipping = "0";
			info.Discount_amount = "0";
			info.order_description = "Extension Of Insurance";
			info.return_url = currentLink + "xac-nhan-don-hang";
			info.cancel_url = currentLink + "huy-don-hang";

			info.Buyer_fullname = registration_Insurance.FullName;
			info.Buyer_email = registration_Insurance.Email;
			info.Buyer_mobile = registration_Insurance.Phone;

			APICheckoutV3 objNLChecout = new APICheckoutV3();

			ResponseInfo result = objNLChecout.GetUrlCheckout(info, paymentMethod);

			string content = System.IO.File.ReadAllText(Server.MapPath("~/Content/Client/neworder.html"));

			content = content.Replace("{{CustomerName}}", registration_Insurance.FullName);
			content = content.Replace("{{Phone}}", registration_Insurance.Phone);
			content = content.Replace("{{Email}}", registration_Insurance.Email);
			content = content.Replace("{{Address}}", registration_Insurance.Address);
			content = content.Replace("{{Total}}", registration_Insurance.TotalMoney.ToString());
			var toEmail = ConfigurationManager.AppSettings["ToEmailAddress"].ToString();

			new MailHelper().SendMail(registration_Insurance.Email, "Application form from insurance provider", content);
			new MailHelper().SendMail(toEmail, "Application form from insurance provider", content);
			//Check thanh toán online
			if (result.Error_code == "00")
			{
				registration_Insurance.TotalMoney = registration_Insurance.TotalMoney + Convert.ToInt32(registration_Insurance.Insurrance.Price);
				db.Entry(registration_Insurance).State = EntityState.Modified;
				db.SaveChanges();
				SetAlert("Payment success", "success");
				return Redirect(result.Checkout_url);
			}
			else
			{
				SetAlert("Error!", result.Description);
				return Redirect("/");
			}
		}

	}
}
