using System.Security.Claims;
using Microsoft.AspNetCore.Mvc;
using Wedbanghang.Repository;
using System.Security.Claims;
using Wedbanghang.Models;

namespace Wedbanghang.Controllers
{
    public class CheckoutController : Controller
    {
        private readonly DataContext _dataContext;
        public CheckoutController(DataContext context)
        {
            _dataContext = context;
        }
        public async Task<IActionResult> Checkout()
        {
            var userEmail = User.FindFirstValue(ClaimTypes.Email);
            if (userEmail == null)
            {
                return RedirectToAction("Login", "Account");
            }
            else
            {
                var odercode = Guid.NewGuid().ToString();
                var oderItem = new OrderModel();
                oderItem.OrderCode = odercode;
                oderItem.UserName = userEmail;
                oderItem.Status = 1;
                _dataContext.Add(oderItem);
                _dataContext.SaveChanges();
                List<CartItemModel> cartItem = HttpContext.Session.GetJson<List<CartItemModel>>("Cart") ?? new List<CartItemModel>();
                foreach (var cart in cartItem)
                {
                    var orderdetails = new OrderDetails();
                    orderdetails.UserName = userEmail;
                    orderdetails.OrderCode = odercode;
                    orderdetails.ProductId = (int)cart.ProductId;
                    orderdetails.Price = cart.Price;
                    orderdetails.Quantity = cart.Quantity;
                    _dataContext.Add(orderdetails);
                    _dataContext.SaveChanges();
                }
                HttpContext.Session.Remove("Cart");
                TempData["success"] = "Checkou thành công vui lòng chờ duyệt đơn hàng";
                return RedirectToAction("Index", "Cart");
            }
            return View();
        }
    }
}


