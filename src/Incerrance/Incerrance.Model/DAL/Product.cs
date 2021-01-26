namespace Incerrance.Model.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Web.Mvc;

    [Table("Product")]
    public partial class Product
    {
        [Display(Name = "Tên saÒn phâÒm")]
        public Guid Id { get; set; }

        [StringLength(256)]
        [Display(Name = "Tên saÒn phâÒm")]
        [Required(ErrorMessage = "Baòn chıa nhâòp tên saÒn phâÒm")]
        public string Name { get; set; }
        [Display(Name = "MaŞ khuyêìn maŞi")]
        [StringLength(20)]
        public string Code { get; set; }
        [Required(ErrorMessage = "Baòn chıa nhâòp tên link liên kêìt")]
        [Display(Name = "Liên kêìt")]
        [StringLength(256)]
        public string MetaTitle { get; set; }
        [Display(Name = "Mô taÒ")]
        [AllowHtml]
        public string Description { get; set; }
        [Display(Name = "AÒnh")]
        [StringLength(256)]
        public string UrlImage { get; set; }
        [Display(Name = "Giaì")]
        [DataType(DataType.Currency)]
        [DisplayFormat(DataFormatString = "{0:C0}")]
        public decimal? Price { get; set; }
        [Display(Name = "Giaì khuyêìn maŞi")]
        [DataType(DataType.Currency)]
        [DisplayFormat(DataFormatString = "{0:C0}")]
        public decimal? PromotionPrice { get; set; }
        [Display(Name = "Sôì lıõòng")]
        public int? Quantity { get; set; }
        [Display(Name = "Loaòi saÒn phâÒm")]
        public Guid? ProductCategoryId { get; set; }
        [Column(TypeName = "ntext")]
        [Display(Name = "Chi tiêìt")]
        public string Detail { get; set; }
        [Display(Name = "TıÌ khoìa")]
        [StringLength(256)]
        public string MetaKeywords { get; set; }
        [Display(Name = "SaÒn phâÒm Hot")]
        public bool? TopHot { get; set; }
        [Display(Name = "SaÒn phâÒm biÌnh thıõÌng muòc 1")]
        public bool? IsNormalProduct1 { get; set; }
        [Display(Name = "SaÒn phâÒm biÌnh thıõÌng muòc 2")]
        public bool? IsNormalProduct2 { get; set; }
        [Display(Name = "SaÒn phâÒm mõìi")]
        public bool? IsNewProduct { get; set; }
        [Display(Name = "Lıõòt xem")]
        public int? ViewCount { get; set; }
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm}", ApplyFormatInEditMode = true)]
        [Display(Name = "NgaÌy taòo")]
        public DateTimeOffset? CreatedOn { get; set; }
        [StringLength(256)]
        [Display(Name = "NgıõÌi taòo")]
        public string CreatedBy { get; set; }
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm}", ApplyFormatInEditMode = true)]
        [Display(Name = "NgaÌy câòp nhâòt")]
        public DateTimeOffset? ModifiedOn { get; set; }
        [StringLength(256)]
        [Display(Name = "NgıõÌi câòp nhâòt")]
        public string ModifiedBy { get; set; }
        [Display(Name = "Traòng thaìi")]
        public bool IsDeleted { get; set; }
        public virtual ProductCategory ProductCategory { get; set; }
    }
}
