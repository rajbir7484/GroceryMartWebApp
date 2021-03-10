using GroceryMartWebApp.BusinessLayer;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GroceryMartWebApp.Data
{
    
    public class GroceryMartDataContext : DbContext
    {
        public GroceryMartDataContext(DbContextOptions<GroceryMartDataContext> options) : base(options)
        {

        }

        public DbSet<Category> Category { get; set; } //Category

        public DbSet<Company> Company { get; set; } //Company

        public DbSet<Product> Product { get; set; } //Product

        public DbSet<Order> Order { get; set; } //Order
    }
}
