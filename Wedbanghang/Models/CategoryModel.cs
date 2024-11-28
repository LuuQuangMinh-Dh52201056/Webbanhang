﻿using System.ComponentModel.DataAnnotations;

namespace Wedbanghang.Models
{
    public class CategoryModel
    {
        [Key]
        public int Id { get; set; }
        [Required,MinLength(4,ErrorMessage = "Yêu cầu nhập tên danh mục")]
        public string Name { get; set; }

        [Required, MinLength(4, ErrorMessage = "Yêu cầu nhập Mô tả danh mục")]
        public string Description { get; set; }
        [Required]
        public string Slug { get; set; }
        public int status { get; set; }
    }
}