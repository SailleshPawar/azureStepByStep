using Microsoft.ServiceBus;
using Microsoft.ServiceBus.Messaging;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Threading.Tasks;

namespace TopicSubscriptionRule
{

    [Serializable]
    public class Customer
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }

    //Not sure about the portal, but you can use the Azure CLI or ARM templates to create filtered subscriptions
    class Program
    {

        public static MemoryStream SerializeToStream(object o)
        {
            MemoryStream stream = new MemoryStream();
            IFormatter formatter = new BinaryFormatter();
            formatter.Serialize(stream, o);
            return stream;
        }
        static void Main(string[] args)
        {
            string topicName = "mytopic";
            string sbconnection = "connectionstrin";
            var ns = NamespaceManager.CreateFromConnectionString(sbconnection);
            ////SqlFilter filter = new SqlFilter("sys.Label LIKE '%Bus%'");
            ////ns.CreateSubscription(topicName, "LikeBus", filter);
            SqlFilter filter = new SqlFilter("FirstName = 'saillesh'");
            //Customer customer = new Customer() { FirstName = "saillesh", LastName = "pawar" };
            ns.CreateSubscription(topicName, "OnObject", filter);
            //Customer customer = new Customer() { FirstName = "saillesh", LastName = "pawar" };
            ////MemoryStream stream = SerializeToStream(customer);
            //var message3 = new BrokeredMessage(Newtonsoft.Json.JsonConvert.SerializeObject(customer));
            //message3.Label = "tube";
            //message3.ContentType = "application/json";
            //var client = TopicClient.CreateFromConnectionString(sbconnection, topicName);
            //client.Send(message3);
            //client.Close();


        }
    }
}
