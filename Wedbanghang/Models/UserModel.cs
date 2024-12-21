using System.ComponentModel.DataAnnotations;

namespace Wedbanghang.Models
{
    public class UserModel
    {
        public int Id { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập UserName")]

        public string Username { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập Email"),EmailAddress]
        public string Email { get; set; }
        [DataType(DataType.Password)]
        [Required(ErrorMessage = "Vui lòng nhập Mật khẩu")]
        public string Password { get; set; }
    }
}
