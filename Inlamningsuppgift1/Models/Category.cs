using System;
using System.Collections.Generic;

#nullable disable

namespace Inlamningsuppgift1.Models
{
    public partial class Category
    {
        public Category(int id, string name)
        {
            CategoryId = id;
            CategoryName = name;
        }
        public Category()
        {

        }
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
    }
}
