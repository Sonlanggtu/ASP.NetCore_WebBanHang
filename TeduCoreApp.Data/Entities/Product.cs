using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;
using TeduCoreApp.Data.Enums;
using TeduCoreApp.Data.Interfaces;
using TeduCoreApp.Infrastructure.SharedKernel;

namespace TeduCoreApp.Data.Entities
{
    [Table("Products")]
    public class Product : DomainEntity<int>, IDateTracking, IHasOwner<int>, IHasSeoMetaData, ISwitchable
    {

        [ForeignKey("CategoryId")]
        public virtual ProductCategory ProductCategory { get; set; }

        [Required]
        public string Name { get; set; }

        public string Description { get; set; }

        public int? HomeOrder { get; set; }

        public string Image { get; set; }

        public string Content { get; set; }

        [Required]
        // [DefaultValue(0)]
        public decimal Price { get; set; }

        public decimal? PromotionPrice { get; set; }

        [Required] 
        public decimal OriginalPrice { get; set; }

        public int OwnerId { set; get; }

        public bool? HotFlag { get; set; }

        public bool? HomeFlag { get; set; }

        public string Tags { get; set; }

        public string Unit { get; set; }

        public int? ViewCount { get; set; }

        public int SortOrder { set; get; }

        public Status Status { set; get; }

        public DateTime DateCreated { set; get; }

        public DateTime DateModified { set; get; }

        [StringLength(255)]
        public string SeoPageTitle { set; get; }

        [StringLength(255)]
        [Required]
        [Column(TypeName = "varchar(255)")]
        public string SeoAlias { set; get; }

        [StringLength(255)]
        public string SeoKeywords { set; get; }

        [StringLength(255)]
        public string SeoDescription { set; get; }
       
    }
}
