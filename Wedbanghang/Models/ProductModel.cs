using System.ComponentModel.DataAnnotations;

namespace Wedbanghang.Models
{
    public class ProductModel
    {
        [Key]
        public int Id { get; set; }
        [Required, MinLength(4, ErrorMessage = "Yêu cầu nhập tên Sản Phẩm")]
        public string Name { get; set; }
        
        public string Slug { get; set; }
        [Required, MinLength(4, ErrorMessage = "Yêu cầu nhập Mô tả dSản Phẩm")]
        public string Description { get; set; }
        [Required, MinLength(4, ErrorMessage = "Yêu cầu nhập Giá Sản Phẩm")]
        public decimal Price { get; set; }
        public int BrandID { get; set; }
        public int CategoryID { get; set; }
        public CategoryModel Category { get; set; }
        public BrandModel Brand { get; set; }
        public string Image { get; set; }   
    }
}
