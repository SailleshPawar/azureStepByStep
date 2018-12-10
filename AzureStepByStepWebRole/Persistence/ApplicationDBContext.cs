using AzureStepByStep.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace AzureStepByStepWebRole.Persistence
{
    public class ApplicationDBContext:DbContext
    {
        public ApplicationDBContext():base("DefaultConnection")
        {

        }


        public DbSet<Customer> customer
        {
            get;
            set;
        }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            //mapping with the Customer Table  
            modelBuilder.Entity<Customer>().ToTable("Customers");
        }
    }
}