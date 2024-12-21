using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Wedbanghang.Models
{
    public class OrderDetails
    {
        //[Key]
        public int Id { get; set; }
        public string UserName { get; set; }
        public string OrderCode { get; set; }
        public int ProductId { get; set; }
        public decimal Price { get; set; }
        public int Quantity { get; set; }

        [ForeignKey("ProductId")]
        public ProductModel Product { get; set; }
    }
}
