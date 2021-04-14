using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using Inlamningsuppgift1.Models;
using Inlamningsuppgift1.ViewModels;
using Microsoft.AspNetCore.Mvc.Rendering;


namespace Inlamningsuppgift1.Controllers
{
    public class RecipeController : Controller
    {
        private RecipeDBContext _context;

        public RecipeController(RecipeDBContext context)
        {
            _context = context;
        }

        //***********************************************************visa alla resept******************************************************
        public IActionResult ViewRecipes(int cID)
        {//Visas alla resept från DB

            var model = _context.Recipes.Where(c=>c.CategoryId == cID).OrderByDescending(c => c.CreateDate).ToList();

            return View(model);
        }


        //***********************************************************Detaljer för resept******************************************************
        public IActionResult ViewRecipesDetails(int id)
        {//Visas detaljer för valde resept
            var model = _context.Recipes.SingleOrDefault(r => r.RecipeId == id);

            return View(model);
        }


        //***********************************************************Lägga ny resept******************************************************
        public IActionResult AddRecipes()
        {

            //Lägg till kategorier i viewmodelklassen
            RecpieViewModel modelView = new RecpieViewModel();
            modelView.Categories = _context.Categories.ToList();


            return View(modelView);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult AddRecipes(RecpieViewModel model)
        {
            if (ModelState.IsValid)
            {//Om validering gick igenom då sparas reseptet

                Recipe recipe = new Recipe();

                //Sätter värdena till recipe klassen/tabelen 
                recipe.Title = model.Title;
                recipe.Post = model.Post;
                recipe.CreateDate = model.CreateDate;
                recipe.CategoryId = model.CategoryID;

                _context.Recipes.Add(recipe);
                _context.SaveChanges();

                ModelState.Clear();

                ViewBag.Message = "Reseptet är sparad";
            }
            else
            {
                ViewBag.Message = "något gick fel!";
            }
            model.Categories = _context.Categories.ToList();

            return View(model);
        }

        //***********************************************************Sök på resept******************************************************
        public IActionResult SearchRecipes()
        {
            SearchViewModel searchView = new SearchViewModel();

            searchView.Titles = _context.Recipes.ToList();
            searchView.Categories = _context.Categories.ToList();

            return View(searchView);
        }

        [HttpPost]
        public IActionResult SearchRecipes(SearchViewModel model)
        {
            var result = _context.Recipes.Where(r => r.Title.Contains(model.SearchValue) &&
                                                    r.CategoryId == model.CategoryID).OrderByDescending(c => c.CreateDate).ToList();


            model.Titles = _context.Recipes.ToList();
            model.Categories = _context.Categories.ToList();

            model.Titles = result;

            return View(model);
        }

    }
}
