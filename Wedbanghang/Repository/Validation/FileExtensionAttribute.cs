using System.ComponentModel.DataAnnotations;
using System.IO;
using System.Linq;
using Microsoft.AspNetCore.Http;

namespace Wedbanghang.Repository.Validation
{
    public class FileExtensionAttribute : ValidationAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (value is IFormFile file)
            {
                var extension = Path.GetExtension(file.FileName);
                string[] extensions = { "jpg", "png", "jpeg" };

                bool result = extensions.Any(x => extension.EndsWith(x));

                // Kiểm tra phần mở rộng tệp
                if (!result)
                {
                    return new ValidationResult("Allowed extensions are jpg, png or jpeg.");
                }
            }

            // Trả về thành công nếu không có vấn đề
            return ValidationResult.Success;
        }
    }
}
