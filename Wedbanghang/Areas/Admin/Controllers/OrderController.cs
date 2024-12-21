using System.Reflection.Metadata.Ecma335;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Wedbanghang.Models;
using Wedbanghang.Repository;

namespace Wedbanghang.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize]
    public class OrderController : Controller
    {
        private readonly DataContext _dataContext;
        public OrderController(DataContext context)
        {
            _dataContext = context;
        }
        public async Task<IActionResult> Index()
        {
            return View((await _dataContext.OrderModels.OrderByDescending(p => p.Id).ToListAsync()));
        }

        public async Task<IActionResult> ViewOrder(string orderCode)
        {
            var DetailsOrder = await _dataContext.OrderDetails
                .Include(od => od.Product)
                .Where(od => od.OrderCode.Equals(orderCode))
                .ToListAsync();

            return View(DetailsOrder);
        }
        [HttpPost]
        [Route("UpdateOrder")]
        public async Task<IActionResult> UpdateOrder(string ordercode, int status)
        {
            var order = await _dataContext.OrderModels.FirstOrDefaultAsync(o => o.OrderCode == ordercode);

            if (order == null)
            {
                return NotFound(new { success = false, message = "Không tìm thấy đơn hàng" });
            }

            order.Status = status;

            try
            {
                await _dataContext.SaveChangesAsync();
                return Ok(new { success = true, message = "Trạng thái đơn hàng được cập nhật thành công" });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { success = false, message = "Lỗi cập nhật đơn hàng" });
            }
        }
        public async Task<IActionResult> Delete(int Id)
        {
            // Tìm đơn hàng theo Id
            var order = await _dataContext.OrderModels.FindAsync(Id);

            if (order == null)
            {
                TempData["error"] = "Đơn hàng không tồn tại.";
                return RedirectToAction("Index");
            }
            // Xóa đơn hàng
            _dataContext.OrderModels.Remove(order);

            try
            {
                await _dataContext.SaveChangesAsync();
                TempData["success"] = "Đơn hàng đã được xóa thành công.";
            }
            catch (Exception ex)
            {
                TempData["error"] = "Có lỗi xảy ra khi xóa đơn hàng.";
            }

            return RedirectToAction("Index");
        }

    }
}
