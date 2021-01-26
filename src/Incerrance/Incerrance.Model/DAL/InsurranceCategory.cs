namespace Incerrance.Model.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("InsurranceCategory")]
    public partial class InsurranceCategory
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public InsurranceCategory()
        {
            Insurrances = new HashSet<Insurrance>();
        }

        public Guid Id { get; set; }

        [StringLength(250)]
        [Required(ErrorMessage = "You have not entered a name")]
        public string Name { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage = "You have not entered a description")]
        public string Description { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage = "You have not entered a metaTitle")]
        public string MetaTitle { get; set; }

        public DateTimeOffset? CreatedOn { get; set; }

        [StringLength(256)]
        public string CreatedBy { get; set; }

        public DateTimeOffset? ModifiedOn { get; set; }

        [StringLength(256)]
        public string ModifiedBy { get; set; }

        public bool IsDeleted { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Insurrance> Insurrances { get; set; }
    }
}
