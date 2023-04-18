using ParonSoftSolutions.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ParonSoftSolutions.DbContexts
{
    public class ModelDbContext : DbContext
    {
        public ModelDbContext() : base("name=DefaultConnection")
        {
            Database.SetInitializer<ModelDbContext>(null);
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            Database.SetInitializer<ModelDbContext>(null);
            base.OnModelCreating(modelBuilder);
        }

        public DbSet<Employee> Employee { get; set; }
    }
}