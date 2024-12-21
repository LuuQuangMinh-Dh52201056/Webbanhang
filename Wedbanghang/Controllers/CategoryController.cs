﻿using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Wedbanghang.Models;
using Wedbanghang.Repository;

namespace Wedbanghang.Controllers
{
    public class CategoryController : Controller
    {
        private readonly DataContext _dataContext;
        public CategoryController(DataContext context)
        {
            _dataContext = context;
        }
        public async Task<IActionResult> Index(String Slug = " ")
        {
            CategoryModel category = _dataContext.Categories.Where(c =>  c.Slug == Slug).FirstOrDefault();
            if (category == null) return RedirectToAction("Index");
                var productsByCategory = _dataContext.Products.Where(p => p.CategoryID == category.Id);
                return View(await productsByCategory.OrderByDescending(p => p.Id).ToListAsync());
            
        
        }
    }
}
