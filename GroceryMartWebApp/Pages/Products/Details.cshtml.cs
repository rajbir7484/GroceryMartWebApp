using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using GroceryMartWebApp.BusinessLayer;
using GroceryMartWebApp.Data;

namespace GroceryMartWebApp.Products
{
    public class DetailsModel : PageModel
    {
        private readonly GroceryMartWebApp.Data.GroceryMartDataContext _context;

        public DetailsModel(GroceryMartWebApp.Data.GroceryMartDataContext context)
        {
            _context = context;
        }

        public Product Product { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Product = await _context.Product
                .Include(p => p.Category)
                .Include(p => p.Company).FirstOrDefaultAsync(m => m.ProductID == id);

            if (Product == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
