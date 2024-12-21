using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using Wedbanghang.Repository;

namespace Wedbanghang.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Route("Admin/Role")]
    [Authorize(Roles = "Admin")]
    public class RoleController : Controller
    {
        private readonly DataContext _dataContext;
        private readonly RoleManager<IdentityRole> _roleManager;

        public RoleController(DataContext context, RoleManager<IdentityRole> roleManager)
        {
            _dataContext = context;
            _roleManager = roleManager;
        }

        [Route("Index")]
        public async Task<IActionResult> Index()
        {
            return View(await _dataContext.Roles.OrderByDescending(p => p.Id).ToListAsync());
        }

        [HttpGet]
        [Route("Create")]
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [Route("Create")]
        public async Task<IActionResult> Create(IdentityRole role)
        {
            if (ModelState.IsValid)
            {
                await _roleManager.CreateAsync(role);
                TempData["success"] = "Role đã được tạo thành công";
                return RedirectToAction("Index");
            }
            return View(role);
        }

        [HttpGet]
        [Route("Edit/{id}")]
        public async Task<IActionResult> Edit(string id)
        {
            if (string.IsNullOrEmpty(id))
            {
                return NotFound();
            }
            var role = await _roleManager.FindByIdAsync(id);
            if (role == null)
            {
                return NotFound();
            }
            return View(role);
        }
        [HttpPost]
        [Route("Edit")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, IdentityRole model)
        {
            if (string.IsNullOrEmpty(id))
            {
                return NotFound();
            }
            if (ModelState.IsValid)
            {
                var role = await _roleManager.FindByIdAsync(id);
                if (role == null)
                {
                    return NotFound();
                }
                role.Name = model.Name;
                try
                {
                    await _roleManager.UpdateAsync(role);
                    TempData["success"] = "Role updated successFully!";
                    return RedirectToAction("Index");
                }
                catch (Exception ex)
                {
                    ModelState.AddModelError(" ", "An error occurred while updating the role.");
                }
                
            }
            return View(model ?? new IdentityRole { Id = id });
        }

        [HttpPost]
        [Route("Edit/{id}")]
        public async Task<IActionResult> Edit(IdentityRole role)
        {
            if (ModelState.IsValid)
            {
                var existingRole = await _roleManager.FindByIdAsync(role.Id);
                if (existingRole == null)
                {
                    return NotFound();
                }

                existingRole.Name = role.Name;
                await _roleManager.UpdateAsync(existingRole);
                TempData["success"] = "Role đã được cập nhật thành công";
                return RedirectToAction("Index");
            }
            return View(role);
        }

        [HttpGet]
        [Route("Delete/{id}")]
        public async Task<IActionResult> Delete(string id)
        {
            if (string.IsNullOrEmpty(id))
            {
                return NotFound();
            }

            var role = await _dataContext.Roles.FindAsync(id);
            if (role == null)
            {
                return NotFound();
            }

            try
            {
                _dataContext.Roles.Remove(role);
                await _dataContext.SaveChangesAsync();
                TempData["success"] = "Role đã được xóa thành công";
            }
            catch (DbUpdateException ex)
            {
                ModelState.AddModelError("", "Không thể xóa vai trò vì nó có liên kết dữ liệu khác: " + ex.Message);
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", "Đã xảy ra lỗi khi xóa role: " + ex.Message);
            }

            return RedirectToAction("Index");
        }
    }
}

