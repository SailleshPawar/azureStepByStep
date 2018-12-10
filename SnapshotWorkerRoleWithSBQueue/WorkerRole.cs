using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading;
using Microsoft.ServiceBus;
using Microsoft.ServiceBus.Messaging;
using Microsoft.WindowsAzure;
using Microsoft.WindowsAzure.ServiceRuntime;
using NReco.PhantomJS;
using SendGrid;
using SendGrid.Helpers.Mail;

namespace SnapshotWorkerRoleWithSBQueue
{
    public class WorkerRole : RoleEntryPoint
    {
        // The name of your queue
        const string QueueName = "snapshotqueue";

        // QueueClient is thread-safe. Recommended that you cache 
        // rather than recreating it on every request
        QueueClient Client;
        ManualResetEvent CompletedEvent = new ManualResetEvent(false);

        public override void Run()
        {
            Trace.WriteLine("Starting processing of messages");

            // Initiates the message pump and callback is invoked for each message that is received, calling close on the client will stop the pump.
            Client.OnMessage((receivedMessage) =>
                {
                    try
                    {

                        var base64Image = string.Empty;
                        //this code should be in library of Phatom
                        var snapshotFilePath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Snapshot.js");
                        var phantomJS = new PhantomJS();
                        phantomJS.OutputReceived += (sender, e) => {
                            if (!string.IsNullOrEmpty(e.Data))
                            {

                                base64Image = e.Data;
                            }
                        };
                        phantomJS.ErrorReceived += (sender, e) => {
                            throw new Exception(e.Data);
                        };
                        var url= ConfigurationManager.AppSettings["applicationUrl"];
                        //var scriptText = File.ReadAllText(snapshotFilePath);
                        // phantomJS.RunScript(scriptText, null);
                        phantomJS.Run(snapshotFilePath,new string[] { url });

                        //send grid code should be separate library
                        var apiKey = ConfigurationManager.AppSettings["SENDGRID_API_KEY"];
                        var templateId = ConfigurationManager.AppSettings["TEMPLATEID"];
                        var client = new SendGridClient(apiKey);
                        var from = new EmailAddress("LearnStepByStep12@outlook.com", "LearnAzure");
                        EmailAddress emailAddress = new EmailAddress("psaillesh@gmail.com","Saillesh Pawar");
                        var msg = new SendGridMessage()
                        {
                           
                            From = from,
                            Subject = "Azure step by step",
                            TemplateId = templateId
                        };

                        msg.AddTo(emailAddress);
                        msg.AddAttachment("SnapshotImage", base64Image, "image/jpg", "inline", "Snapshotimage");
                     var  status=   client.SendEmailAsync(msg).Result;
                        // Process the message
                    }
                    catch(Exception ex)
                    {
                        // Handle any message processing specific exceptions here
                    }
                });

            CompletedEvent.WaitOne();
        }

        public override bool OnStart()
        {
            // Set the maximum number of concurrent connections 
            ServicePointManager.DefaultConnectionLimit = 12;

            // Create the queue if it does not exist already
            string connectionString = CloudConfigurationManager.GetSetting("Microsoft.ServiceBus.ConnectionString");
            var namespaceManager = NamespaceManager.CreateFromConnectionString(connectionString);
            if (!namespaceManager.QueueExists(QueueName))
            {
                namespaceManager.CreateQueue(QueueName);
            }

            // Initialize the connection to Service Bus Queue
            Client = QueueClient.CreateFromConnectionString(connectionString, QueueName);
            return base.OnStart();
        }

        public override void OnStop()
        {
            // Close the connection to Service Bus Queue
            Client.Close();
            CompletedEvent.Set();
            base.OnStop();
        }
    }
}
