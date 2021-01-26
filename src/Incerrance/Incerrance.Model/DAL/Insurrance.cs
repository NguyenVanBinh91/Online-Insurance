namespace Incerrance.Model.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
	using System.Web.Mvc;

	[Table("Insurrance")]
    public partial class Insurrance
    {
        public Guid Id { get; set; }

        [Required(ErrorMessage = "You have not selected an insurance category")]
        public Guid? InsurranceCategoryId { get; set; }

        [StringLength(50)]
        public string InsurranceCode { get; set; }

        [StringLength(250)]
        [Required(ErrorMessage = "You have not entered a name")]
        public string Name { get; set; }

        [AllowHtml]
        [Required(ErrorMessage = "You have not entered a description")]
        public string Description { get; set; }

        [StringLength(250)]
        [Required(ErrorMessage = "You have not entered a metaTitle")]
        public string MetaTitle { get; set; }

        [StringLength(250)]
        [Required(ErrorMessage = "You have not selected an images insurrance")]
        public string ImagesInsurrance { get; set; }

        [Required(ErrorMessage = "You have not entered a Price")]
        public decimal? Price { get; set; }

        [StringLength(255)]
        [Required(ErrorMessage = "You have not entered a InsurancePeriod")]
        public string InsurancePeriod { get; set; }

        [Required(ErrorMessage = "You have not entered a Quantity")]
        public int? Quantity { get; set; }

        public bool IsDeleted { get; set; }

        public DateTimeOffset? CreatedOn { get; set; }

        [StringLength(256)]
        public string CreatedBy { get; set; }

        public DateTimeOffset? ModifiedOn { get; set; }

        [StringLength(256)]
        public string ModifiedBy { get; set; }

        public virtual InsurranceCategory InsurranceCategory { get; set; }
        public virtual ICollection<Registration_Insurance> Registration_Insurance { get; set; }
    }
}
