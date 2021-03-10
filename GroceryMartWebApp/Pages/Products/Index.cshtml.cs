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
    public class IndexModel : PageModel
    {
        private readonly GroceryMartWebApp.Data.GroceryMartDataContext _context;

        public IndexModel(GroceryMartWebApp.Data.GroceryMartDataContext context)
        {
            _context = context;
        }

        public IList<Product> Product { get;set; }

        public async Task OnGetAsync()
        {
            Product = await _context.Product
                .Include(p => p.Category)
                .Include(p => p.Company).ToListAsync();
        }
    }
}
