using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Identity;

namespace Wedbanghang.Models
{
    public class AppUserModel : IdentityUser
    {
        public string Occupation {  get; set; }

        public string RoleId { get; set; }
    }

}
