namespace Incerrance.Model.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ClaimInsurance")]
    public partial class ClaimInsurance
    {
        public Guid Id { get; set; }

        public Guid? Registration_InsuranceId { get; set; }

        public Guid? UserId { get; set; }

        public string Reply { get; set; }

        public string Description { get; set; }

        [StringLength(255)]
        public string Status { get; set; }

        [StringLength(256)]
        public string ModifiedBy { get; set; }

        public DateTimeOffset? CreatedOn { get; set; }

        [StringLength(256)]
        public string CreatedBy { get; set; }

        public DateTimeOffset? ModifiedOn { get; set; }

        public virtual Registration_Insurance Registration_Insurance { get; set; }
    }
}
