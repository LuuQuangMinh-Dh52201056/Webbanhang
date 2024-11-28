using Microsoft.EntityFrameworkCore;
using Wedbanghang.Models;

namespace Wedbanghang.Repository
{
    public class SeedData
    {
        public static void SeedingData(DataContext _context)
        {
            //_context.Database.Migrate();
            //if (!_context.Products.Any())
            //{
            //    CategoryModel MACBOOK = new CategoryModel { Name = "MACBOOK", Slug = "MACBOOK", Description = "MACBOOK is big large Brand int the word ", status = 1 };
            //    CategoryModel Laptop = new CategoryModel { Name = "Laptop", Slug = "Laptop", Description = "Laptop is big large Brand int the word ", status = 1 };

            //    BrandModel APPLE = new BrandModel { Name = "APPLE", Slug = "APPLE", Description = "APPLE is big large Brand int the word ", status = 1 };
            //    BrandModel ASUS = new BrandModel { Name = "ASUS TUF", Slug = "ASUS TUF", Description = "ASUS TUF  is big large Brand int the word ", status = 1 };

            //    _context.Products.AddRange(

            //        new ProductModel { Name = "Macbook", Slug = "Macbook", Description = "Macbook is Best", Image = "1.jpg", Category = MACBOOK, Brand = APPLE, Price = 1233 },
            //        new ProductModel { Name = "Laptop", Slug = "Laptop", Description = "Laptop is Best", Image = "1.jpg", Category = Laptop, Brand = ASUS, Price = 1233 }
            //         );
                //_context.SaveChanges();
            //}
        }
    }
}
