using System;
using System.Collections.Generic;

#nullable disable

using System.ComponentModel.DataAnnotations;


namespace Inlamningsuppgift1.Models
{
    public partial class Recipe
    {
        public int RecipeId { get; set; }

        public string Title { get; set; }

        public string Post { get; set; }

        public DateTime CreateDate { get; set; }
        
        public int CategoryId { get; set; }
    }
}
