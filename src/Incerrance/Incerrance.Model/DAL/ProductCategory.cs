namespace Incerrance.Model.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ProductCategory")]
    public partial class ProductCategory
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ProductCategory()
        {
            Product = new HashSet<Product>();
        }

        public Guid Id { get; set; }

        [StringLength(256)]
        [Display(Name = "Loaòi saÒn phâÒm")]
        public string Name { get; set; }

        [StringLength(256)]
        [Display(Name = "Liên kêìt")]
        public string MetaTitle { get; set; }
        //[Display(Name = "Loaòi saÒn phâÒm")]
        public int? ParentId { get; set; }
        [Display(Name = "STT")]
        public int? DisplayOrder { get; set; }
        [Display(Name = "Tiêu ðêÌ SEO")]
        [StringLength(256)]
        public string SeoTitle { get; set; }
        [Display(Name = "TýÌ khoìa")]
        [StringLength(256)]
        public string MetaKeywords { get; set; }
        [Display(Name = "Mô taÒ týÌ khoìa")]
        [StringLength(256)]
        public string MetaDescriptions { get; set; }
        [Display(Name = "NgaÌy taòo")]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm}", ApplyFormatInEditMode = true)]
        public DateTimeOffset? CreatedOn { get; set; }
        [StringLength(256)]
        [Display(Name = "NgýõÌi taòo")]
        public string CreatedBy { get; set; }
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm}", ApplyFormatInEditMode = true)]
        [Display(Name = "NgaÌy câòp nhâòt")]
        public DateTimeOffset? ModifiedOn { get; set; }
        [StringLength(256)]
        [Display(Name = "NgýõÌi câòp nhâòt")]
        public string ModifiedBy { get; set; }
        [Display(Name = "Traòng thaìi")]
        public bool IsDeleted { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Product> Product { get; set; }
    }
}
