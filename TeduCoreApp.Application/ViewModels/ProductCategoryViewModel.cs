using System;
using System.Collections.Generic;
using System.Text;
using TeduCoreApp.Data.Enums;

namespace TeduCoreApp.Application.ViewModels
{
    public class ProductCategoryViewModel
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public int? ParentId { set; get; }

        public int? HomeOrder { get; set; }

        public string Alias { get; set; }

        public int CategoryId { get; set; }

        public string Image { get; set; }

        //    public bool? HotFlag { get; set; }

        public bool? HomeFlag { get; set; }

        public DateTime DateCreated { set; get; }

        public DateTime DateModified { set; get; }

        public Status Status { set; get; }

        public string SeoPageTitle { set; get; }

        public string SeoAlias { set; get; }

        public string SeoKeywords { set; get; }

        public string SeoDescription { set; get; }

        public int SortOrder { set; get; }

        public bool IsDeleted { set; get; }

        public int OwnerId { set; get; }

        public ICollection<ProductViewModel> Products { set; get; }
    }
}
