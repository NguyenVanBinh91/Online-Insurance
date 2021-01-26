namespace Incerrance.Model.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Registration_Insurance
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Registration_Insurance()
        {
            ClaimInsurances = new HashSet<ClaimInsurance>();
        }

        public Guid Id { get; set; }

        public Guid? InsurranceId { get; set; }

        public Guid? UserId { get; set; }

        [StringLength(255)]
        [Required(ErrorMessage = "You have not entered a full name")]
        public string FullName { get; set; }

        [Column(TypeName = "date")]
        [Required(ErrorMessage = "You have not selected an Date Of Birth")]
        public DateTime? DateOfBirth { get; set; }

        [StringLength(255)]
        [Required(ErrorMessage = "You have not selected an address")]
        public string Address { get; set; }

        [StringLength(255)]
        [Required(ErrorMessage = "You have not entered a phone")]
        public string Phone { get; set; }

        [StringLength(255)]
        [Required(ErrorMessage = "You have not entered a email")]
        public string Email { get; set; }

        [StringLength(255)]
        public string LicensePlate { get; set; }

        [StringLength(255)]
        public string RangeOfVehicle { get; set; }

        public DateTime? RegistrationDate { get; set; }

        public DateTime? ExpirationDate { get; set; }

        public int? TotalMoney { get; set; }

        [StringLength(255)]
        public string Avatar { get; set; }

        [StringLength(255)]
        [Required(ErrorMessage = "You have not entered a CMND")]
        public string CMND { get; set; }

        [StringLength(255)]
        public string Status { get; set; }

        [StringLength(50)]
        public string RegistrationInsuranceCode { get; set; }

        [StringLength(256)]
        public string ModifiedBy { get; set; }

        public DateTimeOffset? ModifiedOn { get; set; }

        public virtual Insurrance Insurrance { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClaimInsurance> ClaimInsurances { get; set; }
    }
}
