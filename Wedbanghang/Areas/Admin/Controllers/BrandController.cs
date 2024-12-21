using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Wedbanghang.Models;
using Wedbanghang.Repository;

namespace Wedbanghang.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles = "Admin")]

    public class BrandController : Controller
    {
        private readonly DataContext _dataContext;
        public BrandController(DataContext context)
        {
            _dataContext = context;
        }

        public async Task<IActionResult> Index()
        {
            return View((await _dataContext.Brands.OrderByDescending(p => p.Id).ToListAsync()));
        }
        public async Task<IActionResult> Edit(int Id)
        {
            BrandModel brand = await _dataContext.Brands.FindAsync(Id);
            return View(brand);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(BrandModel brand)
        {
            if (ModelState.IsValid)
            {
                // Tạo Slug
                brand.Slug = brand.Name.Replace(" ", "-");

                // Kiểm tra trùng lặp Slug nhưng bỏ qua bản ghi hiện tại
                var existingBrand = await _dataContext.Brands
                    .FirstOrDefaultAsync(p => p.Slug == brand.Slug && p.Id != brand.Id);

                if (existingBrand != null)
                {
                    ModelState.AddModelError("", "Sản phẩm đã có sẵn trong dữ liệu.");
                    return View(brand);
                }

                // Cập nhật dữ liệu
                try
                {
                    var currentBrand = await _dataContext.Brands.FindAsync(brand.Id);
                    if (currentBrand == null)
                    {
                        TempData["error"] = "Không tìm thấy danh mục.";
                        return RedirectToAction("Index");
                    }

                    // Cập nhật thuộc tính
                    currentBrand.Name = brand.Name;
                    currentBrand.Description = brand.Description;
                    currentBrand.Slug = brand.Slug;
                    currentBrand.status = brand.status;

                    await _dataContext.SaveChangesAsync();
                    TempData["success"] = "Cập nhật danh mục thành công.";
                    return RedirectToAction("Index");
                }
                catch (Exception ex)
                {
                    ModelState.AddModelError("", $"Có lỗi xảy ra: {ex.Message}");
                    return View(brand);
                }
            }

            // Ghi log lỗi ModelState
            TempData["error"] = "Model có lỗi, vui lòng kiểm tra.";
            return View(brand);
        }

        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(BrandModel brand)
        {
            if (ModelState.IsValid)
            {
                brand.Slug = brand.Name.Replace(" ", "-");
                var slug = await _dataContext.Brands.FirstOrDefaultAsync(p => p.Slug == brand.Slug);
                if (slug != null)
                {
                    ModelState.AddModelError("", "sản phẩm đã có sẳn trong data");
                    return View(brand);
                }
                _dataContext.Update(brand);
                await _dataContext.SaveChangesAsync();
                TempData["success"] = "thêm danh mục  thành công";
                return RedirectToAction("Index");
            }
            else
            {
                TempData["error"] = "Model có một vài thứ dang bị lỗi";
                List<string> errors = new List<string>();
                foreach (var value in ModelState.Values)
                {
                    foreach (var error in value.Errors)
                    {
                        errors.Add(error.ErrorMessage);
                    }
                }
                string errorMessage = string.Join("\n", errors);
                return BadRequest(errorMessage);
            }
            return View(brand);
        }
        public async Task<IActionResult> Delete(int Id)
        {
            var brand = await _dataContext.Brands.FindAsync(Id);
            if (brand == null)
            {
                TempData["success"] = "____________________DANH MỤC ĐÃ TỒN TẠI____________________";
                return RedirectToAction("Index");
            }

            _dataContext.Brands.Remove(brand);
            await _dataContext.SaveChangesAsync();
            TempData["error"] = "Danh mục đã được xóa.";
            return RedirectToAction("Index");
        }
    }
}
