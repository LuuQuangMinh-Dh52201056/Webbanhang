namespace Wedbanghang.Models
{
    public class Phantrang
    {
        public int TotaItems { get; set; }   // tồng số Item

        public int PageSize { get; set; } // Tồng cố trang Item/trang

        public int CurrentPage { get; set; } // trang hiện tại

        public int TotalPages { get; set; } // Tổng trang

        public int StartPage { get; set; } // Trang bắt đầu

        public int EndPage { get; set; } // trang kết thúc

        public Phantrang()
        {

        }
        public Phantrang (int totalItem, int page, int pageSize = 10)
        {
            int totalPages = (int)Math.Ceiling((decimal)totalItem/(decimal)pageSize);
            int currentPage = page ; // page hiện tại
            int startPage = currentPage - 5; //trang bắt đầu trừ 5 button
            int endPage = currentPage + 4; //trang cuối là 4 button
            if (startPage <= 0)
            {
                // nếu số trang bắt đầu nhỏ hơn or = 0 thì số trang cuối  sẻ bằng 
                endPage = endPage - (startPage - 1); // 6 - (-3 -1 ) = 10
                startPage = 1;
            }
            if (endPage > totalPages) // nếu số trang cuối  > số lượng tổng 
            {
                endPage = totalPages; // số page cuối = số tổng trang 
                if (startPage > 10)  // nếu số trang cuối > 10
                {
                    startPage = endPage - 9; // số trang đầu = trang cuối  - 9
                }
            }
            TotaItems = totalPages;
            CurrentPage = currentPage;
            TotalPages = totalPages;
            StartPage = startPage;
            EndPage = endPage;
                
        }
    }
}
