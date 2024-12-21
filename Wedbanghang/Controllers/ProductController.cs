    using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Wedbanghang.Repository;

namespace Wedbanghang.Controllers
{
    public class Productcontroller : Controller
    {
        private readonly DataContext _dataContext;
        public Productcontroller(DataContext context)
        {
            _dataContext = context;
        }
        public IActionResult Index()
        {
            return View();
        }
        public async Task<IActionResult> Search(string SearchTerm)
        {
            var products = await _dataContext.Products
                .Where(p => p.Name.Contains(SearchTerm) || p.Description.Contains(SearchTerm))
                .ToListAsync();
            ViewBag.Keyword = SearchTerm;
            return View(products);
        }
        public async Task<IActionResult> Details(int Id )
        {
            if (Id == null) return RedirectToAction("Index");

            var productsById = _dataContext.Products.Where(p => p.Id == Id).FirstOrDefault();
            return View(productsById);
        }
      

    }

}

