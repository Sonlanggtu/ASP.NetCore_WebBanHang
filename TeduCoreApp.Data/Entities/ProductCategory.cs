﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using TeduCoreApp.Data.Enums;
using TeduCoreApp.Data.Interfaces;
using TeduCoreApp.Infrastructure.SharedKernel;

namespace TeduCoreApp.Data.Entities
{
    [Table("ProductCategories")]
    public class ProductCategory : DomainEntity<int>, IDateTracking, IHasOwner<int>, IHasSeoMetaData,
        IHasSoftDelete, ISortable, ISwitchable
    {

        public ProductCategory()
        {
            Products = new List<Product>();
        }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        public string Description { get; set; }

        [Required]
        public int? ParentId { set; get; }

        [Column(TypeName = "nvarchar")]
        [Required]
        public string Alias { get; set; }

        public int CategoryId { get; set; }

        public string Image { get; set; }

    //    public bool? HotFlag { get; set; }

        public bool? HomeFlag { get; set; }

        public DateTime DateCreated { set; get; }

        public DateTime DateModified { set; get; }

        public Status Status { set; get; }

        public string SeoPageTitle { set; get; }

        [Column(TypeName = "varchar")]
        [StringLength(255)]
        public string SeoAlias { set; get; }

        public string SeoKeywords { set; get; }

        public string SeoDescription { set; get; }

        public int SortOrder { set; get; }

        public bool IsDeleted { set; get; }

        public int OwnerId { set; get; }

        public ICollection<Product> Products { set; get; }
    }
}