using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using Inlamningsuppgift1.Models;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Mvc.Rendering;
using System.ComponentModel;

namespace Inlamningsuppgift1.ViewModels
{
    public class RecpieViewModel
    {

        [Required(ErrorMessage = "titel är obligatorisk")] // händer om man inte fyller i namn
        [StringLength(50, ErrorMessage = "Titel får vara max 50 tecken längt")] //längen för namnet
        [DisplayName("Titel")]
        public string Title { get; set; }


        [Required(ErrorMessage = "Reseptet är obligatorisk")] // händer om man inte fyller i namn
        [StringLength(2000, ErrorMessage = "Reseptet får vara max 2000 tecken längt")] //längen för namnet
        [DisplayName("Resept")]
        public string Post { get; set; }


        [Required(ErrorMessage = "Datum är obligatorisk")] // händer om man inte fyller i namn
        [DisplayName("Datum")]
        public DateTime CreateDate { get; set; }


        [DisplayName("Kategori")]

        [Required(ErrorMessage = "kategori är obligatorisk")] // händer om man inte fyller i namn
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
            result.Insert(0, new SelectListItem("Välja", string.Empty));
            return result;
        }
    }
}
