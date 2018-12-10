using System;
using System.Configuration;
using System.Linq;
using AzureStepByStep.Persistence;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Host;
using Microsoft.EntityFrameworkCore;

namespace TimerFuncDBCount
{
    public static class Function1
    {
        [FunctionName("Function1")]
        public static void Run([TimerTrigger("%RunTime%")]TimerInfo myTimer, TraceWriter log)
        {
            FunctionsAssemblyResolver.RedirectAssembly();
            var optionsBuilder = new DbContextOptionsBuilder<ApplicationDbContext>();
            optionsBuilder.UseSqlServer(ConfigurationManager.AppSettings["DBConnectionString"]);
            ApplicationDbContext _context = new ApplicationDbContext(optionsBuilder.Options);
            log.Info($"The Total Count of Customer register as of {DateTime.Now} is {_context.Customers.Count()}");
            log.Info($"C# Timer trigger function executed at: {DateTime.Now}");
        }
    }

    //durable functionss
}
