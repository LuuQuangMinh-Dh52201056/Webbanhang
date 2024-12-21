﻿using System.ComponentModel.DataAnnotations;

namespace Wedbanghang.Models
{
    public class BrandModel
    {
        [Key]
        public int Id { get; set; }
        [Required( ErrorMessage = "Yêu cầu nhập tên Thương Hiệu")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Yêu cầu nhập Mô tả Thương Hiệu")]
        public string Description { get; set; }
        public string Slug { get; set; }
        public  int status { get; set; }

    }
}
