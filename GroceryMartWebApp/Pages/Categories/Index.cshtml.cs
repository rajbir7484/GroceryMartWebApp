using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using GroceryMartWebApp.BusinessLayer;
using GroceryMartWebApp.Data;

namespace GroceryMartWebApp.Categories
{
    public class IndexModel : PageModel
    {
        private readonly GroceryMartWebApp.Data.GroceryMartDataContext _context;

        public IndexModel(GroceryMartWebApp.Data.GroceryMartDataContext context)
        {
            _context = context;
        }

        public IList<Category> Category { get;set; }

        public async Task OnGetAsync()
        {
            Category = await _context.Category.ToListAsync();
        }
    }
}
