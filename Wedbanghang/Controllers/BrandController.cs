﻿ using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Wedbanghang.Models;
using Wedbanghang.Repository;


namespace Wedbanghang.Controllers
{
    public class BrandController : Controller
    {
        private readonly DataContext _dataContext;       
            public BrandController(DataContext context)
        {
            _dataContext = context;
        }
        public async Task<IActionResult> Index(String Slug = " ")
        {
            BrandModel brand = _dataContext.Brands.Where(c => c.Slug == Slug).FirstOrDefault();
            if (brand == null) return RedirectToAction("Index");
            var productsByBrand = _dataContext.Products.Where(p => p.BrandID == brand.Id);
            return View(await productsByBrand.OrderByDescending(p => p.Id).ToListAsync());


        }
    }
}

