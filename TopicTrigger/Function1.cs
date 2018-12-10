using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Host;
using Microsoft.ServiceBus.Messaging;
using Newtonsoft.Json;
using System;
using System.IO;
using System.Runtime.Serialization;
using System.Xml;

namespace TopicTrigger
{
    public static class Function1
    {
        [FunctionName("Function1")]
        public static void Run([ServiceBusTrigger("mytopic", "OnObject", AccessRights.Manage, Connection = "AzureWebJobsServiceBus")]BrokeredMessage mySbMsg, TraceWriter log)
        {
            //Stream stream = mySbMsg.GetBody<Stream>();
            //StreamReader reader = new StreamReader(stream);
            //string s = reader.ReadToEnd();

            string s = mySbMsg.GetBody<string>();

            Customer CUS = JsonConvert.DeserializeObject<Customer>(s );
            log.Info($"C# ServiceBus topic trigger function processed message: {mySbMsg}");
        }
    }

    public class Customer
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }
}
