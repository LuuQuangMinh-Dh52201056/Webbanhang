    using System.ComponentModel.DataAnnotations;

namespace Wedbanghang.Models.ViewModels
{
    public class LoginViewModel
    {
        public int Id { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập UserName")]

        public string Username { get; set; }
        [DataType(DataType.Password)]
        [Required(ErrorMessage = "Vui lòng nhập Mật khẩu")]
        public string Password { get; set; }

        public string ReturnUrl { get; set; }
    }
}
