using System.ComponentModel.DataAnnotations;

namespace Wedbanghang.Models
{
    public class OrderModel
    {
        //[Key]
        public int Id { get; set; }
        public string OrderCode { get; set; }
        public string UserName { get; set; }
        public int Status { get; set; }
    }
}
