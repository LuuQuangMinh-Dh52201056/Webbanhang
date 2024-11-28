using Microsoft.AspNetCore.Mvc;

namespace Wedbanghang.Controllers
{
    public class Productcontroller : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Details()
        {
            return View();
        }
    }

}
