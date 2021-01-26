using Incerrance.Model.DAL;
using Incerrance.Model.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Incerrance.Model.Dao
{
	public class InsurranceDao
	{
		private IncerranceDbContext db = new IncerranceDbContext();
		public List<string> ListName(string keyword)
		{
			return db.Insurrances.Where(x => x.Name.Contains(keyword)).Select(x => x.Name).ToList();
		}

		public List<InsurranceViewModel> Search(string keyword)
		{
			var model = (from a in db.Insurrances
						 join b in db.InsurranceCategories
						 on a.InsurranceCategoryId equals b.Id
						 where a.Name.Contains(keyword)
						 select new
						 {
							 CreatedOn = a.CreatedOn,
							 Id = a.Id,
							 ImagesInsurrance = a.ImagesInsurrance,
							 Name = a.Name,
							 MetaTitle = a.MetaTitle,
							 Price = a.Price,
							 InsurancePeriod = a.InsurancePeriod,
							 Quantity = a.Quantity,
							 InsurranceCategory = a.InsurranceCategory
						 }).AsEnumerable().Select(x => new InsurranceViewModel()
						 {
							 CreatedOn = x.CreatedOn,
							 Id = x.Id,
							 ImagesInsurrance = x.ImagesInsurrance,
							 Name = x.Name,
							 MetaTitle = x.MetaTitle,
							 Price = x.Price,
							 InsurancePeriod = x.InsurancePeriod,
							 Quantity = x.Quantity,
							 InsurranceCategory = x.InsurranceCategory
						 });
			model.OrderByDescending(x => x.CreatedOn);
			return model.ToList();
		}
	}
}
