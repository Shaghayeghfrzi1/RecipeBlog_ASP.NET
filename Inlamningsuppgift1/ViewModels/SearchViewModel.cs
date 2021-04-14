using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using Inlamningsuppgift1.Models;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace Inlamningsuppgift1.ViewModels
{
    public class SearchViewModel
    {
        public string SearchValue { get; set; }
        public List<Recipe> Titles { get; set; }

        public int CategoryID { get; set; }
        public List<Category> Categories { get; set; }
        public List<SelectListItem> GetCategoriesListItems()
        {
            var result =
            Categories.Select(c => new SelectListItem
            {
                Value = c.CategoryId.ToString(),
                Text = c.CategoryName
            }).ToList();
            result.Insert(0, new SelectListItem("Alla kategorier", string.Empty));
            return result;
        }
    }
}
