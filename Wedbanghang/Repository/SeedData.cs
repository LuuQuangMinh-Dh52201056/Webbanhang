using Microsoft.EntityFrameworkCore;
using Wedbanghang.Models;
using System.Linq;

namespace Wedbanghang.Repository
{
    public class SeedData
    {
        public static void SeedingData(DataContext _context)
        {
            _context.Database.Migrate();
            if (!_context.Products.Any()) // Kiểm tra nếu chưa có sản phẩm nào
            {
                CategoryModel MACBOOK = new CategoryModel { Name = "MACBOOK", Slug = "MACBOOK", Description = "MACBOOK is big large Brand int the word ", status = 1 };
                CategoryModel Laptop = new CategoryModel { Name = "Laptop", Slug = "Laptop", Description = "Laptop is big large Brand int the word ", status = 1 };

                BrandModel APPLE = new BrandModel { Name = "APPLE", Slug = "APPLE", Description = "APPLE is big large Brand int the word ", status = 1 };
                BrandModel ASUS = new BrandModel { Name = "ASUS TUF", Slug = "ASUS TUF", Description = "ASUS TUF  is big large Brand int the word ", status = 1 };

                // Thêm dữ liệu vào _context
                _context.Categories.AddRange(MACBOOK, Laptop);
                _context.Brands.AddRange(APPLE, ASUS);

                _context.Products.AddRange(
                    new ProductModel { Name = "Macbook", Slug = "Macbook", Description = "Macbook is Best", Image = "1.jpg", Category = MACBOOK, Brand = APPLE, Price = 33 },
                    new ProductModel { Name = "Laptop", Slug = "Laptop", Description = "Laptop is Best", Image = "1.jpg", Category = Laptop, Brand = ASUS, Price = 23 }
                );
                _context.SaveChanges(); // Lưu thay đổi vào database
            }
        }
    }
}
