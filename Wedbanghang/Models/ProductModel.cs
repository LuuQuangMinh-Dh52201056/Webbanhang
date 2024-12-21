using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using Wedbanghang.Models;
using Wedbanghang.Repository.Validation;

public class ProductModel
{
    [Key]
    public int Id { get; set; }

    [Required(ErrorMessage = "Yêu cầu nhập tên Sản Phẩm")]
    public string Name { get; set; }

    //[Required(ErrorMessage = "Slug không được để trống")]
    public string Slug { get; set; }
    [MinLength(4, ErrorMessage = "Mô tả sản phẩm phải có ít nhất 4 ký tự")]

    public string Description { get; set; }
    [Required(ErrorMessage = "Yêu cầu nhập giá sản phẩm")]
    [Range(0.01, double.MaxValue)]
    [Column(TypeName = "decimal(8,2")]
    public decimal Price { get; set; }

    [Required, Range(1, int.MaxValue, ErrorMessage = "Yêu cầu chọn thương hiệu")]
    public int BrandID { get; set; }

    [Required, Range(1, int.MaxValue, ErrorMessage = "Yêu cầu chọn danh mục")]
    public int CategoryID { get; set; }

    public BrandModel Brand { get; set; }
    public CategoryModel Category { get; set; }

    public string Image { get; set; } = "noname.jpg";

    [NotMapped]
    [FileExtension]
    public IFormFile imageUpload { get; set; }
    public ICollection<OrderDetails> OrderDetails { get; set; }
}
