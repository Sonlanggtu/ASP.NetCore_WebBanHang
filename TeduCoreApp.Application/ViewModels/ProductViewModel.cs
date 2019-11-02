using System;
using System.Collections.Generic;
using System.Text;
using TeduCoreApp.Data.Enums;

namespace TeduCoreApp.Application.ViewModels
{
    public class ProductViewModel
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string Alias { get; set; }

        public string Description { get; set; }

        public int? HomeOrder { get; set; }

        public string Image { get; set; }

        public string Content { get; set; }

        public decimal Price { get; set; }

        public decimal? PromotionPrice { get; set; }

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

        public string SeoPageTitle { set; get; }

        public string SeoAlias { set; get; }

        public string SeoKeywords { set; get; }

        public string SeoDescription { set; get; }

        public ProductCategoryViewModel ProductCategory { get; set; }
    }
}
