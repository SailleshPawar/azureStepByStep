using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AzureStepByStep.Models;
using AzureStepByStep.Persistence;
using Microsoft.Azure.WebJobs;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using SendGrid;
using SendGrid.Helpers.Mail;

namespace RegisteredUserDetailSend
{
    public class Functions
    {
        // This function will get triggered/executed when a new message is written 
        // on an Azure Queue called queue.
        public async static Task ProcessQueueMessage([ServiceBusTrigger("emailsend")] string message, TextWriter log)
        {
              Console.WriteLine("The Email Sending Job Starts ");
              // var emailAddress = message;
                var optionsBuilder = new DbContextOptionsBuilder<ApplicationDbContext>();
                optionsBuilder.UseSqlServer(ConfigurationManager.AppSettings["DBConnectionString"]);
                ApplicationDbContext _context = new ApplicationDbContext(optionsBuilder.Options);
                List<Customer> customers = _context.Customers.ToList();
            //writting code in this context only this should be in separate reusable library
            var apiKey = ConfigurationManager.AppSettings["SENDGRID_API_KEY"];
            var templateId = ConfigurationManager.AppSettings["TEMPLATEID"];
            var client = new SendGridClient(apiKey);
            var from = new EmailAddress("LearnStepByStep12@outlook.com","LearnAzure");
            EmailAddress emailAddress = new EmailAddress(message,message);
            var msg = new SendGridMessage()
            {
                From = from,
                Subject = "Azure step by step",
                TemplateId= templateId
            };
            Dictionary<string, List<Customer>> customerDic = new Dictionary<string, List<Customer>>();
            customerDic.Add("customers", customers);
            msg.Personalizations = new List<Personalization>();
            msg.Personalizations.Add(new Personalization()
            {
                TemplateData = customerDic
            });

            msg.AddTo(emailAddress);
            var response = await client.SendEmailAsync(msg);
         }
    }
    }

