using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AzureStepByStep.Persistence;
using Microsoft.Azure.WebJobs;
using Microsoft.EntityFrameworkCore;

namespace CheckDBCount
{
    public class Functions
    {

        
        // This function will get triggered/executed when a new message is written 
        // on an Azure Queue called queue.
        public static void Process([TimerTrigger("%RunTime%", RunOnStartup =true)] TimerInfo timer, TextWriter log)
        {
            var optionsBuilder = new DbContextOptionsBuilder<ApplicationDbContext>();
            optionsBuilder.UseSqlServer(ConfigurationManager.AppSettings["DBConnectionString"]);
            ApplicationDbContext _context = new ApplicationDbContext(optionsBuilder.Options);
            Console.WriteLine($"The Total Count of Customer register as of {DateTime.Now} is {_context.Customers.Count()}");
        }
    }
}

