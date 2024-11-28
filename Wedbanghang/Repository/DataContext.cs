using Microsoft.EntityFrameworkCore;
using Wedbanghang.Models;

namespace Wedbanghang.Repository
{

    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> options) : base(options)
        {
            
        }
        public DbSet<BrandModel> brands { get; set; }

        public DbSet<ProductModel>Products { get; set; }
        public DbSet<CategoryModel> Categories { get; set; }
    }
}
