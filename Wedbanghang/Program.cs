using Microsoft.EntityFrameworkCore;
//using Microsoft.Extensions.Options;
using Wedbanghang.Repository;


var builder = WebApplication.CreateBuilder(args);
//Connection db
builder.Services.AddDbContext<DataContext>(Options =>
{
    Options.UseSqlServer(builder.Configuration["ConnectionStrings:ConnectedDb"]);
});
// Add services to the container.
builder.Services.AddControllersWithViews();

var app = builder.Build();

using (var scope = app.Services.CreateScope())
{
    var dbContext = scope.ServiceProvider.GetRequiredService<DataContext>();
    if (dbContext.Database.CanConnect())
    {
        Console.WriteLine("Kết nối đến cơ sở dữ liệu thành công!");
    }
    else
    {
        Console.WriteLine("Không thể kết nối đến cơ sở dữ liệu.");
    }
}
// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
}
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

// seeding data 
var context = app.Services.CreateScope().ServiceProvider.GetRequiredService<DataContext>();
SeedData.SeedingData(context);
app.Run();


