using Microsoft.AspNetCore.Mvc;

namespace Wedbanghang.Controllers
{
    public class CategoryController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
