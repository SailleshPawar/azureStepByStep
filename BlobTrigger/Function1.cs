using System.IO;
using System.Linq;
using System.Threading;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Host;

namespace BlobTrigger
{
    public static class Function1
    {
        [FunctionName("Function1")]
        public static void Run([BlobTrigger("samples-workitems/{name}", Connection = "")]Stream myBlob, string name, TraceWriter log)
        {

            log.Info($"Blob trigger starts {name}");
            foreach (var item in Enumerable.Range(1,100000))
            {
              
            }
            log.Info("loop completed");
            Thread.Sleep(10 * 60 * 1000);
            log.Info($"C# Blob trigger function Processed blob\n Name:{name} \n Size: {myBlob.Length} Bytes");
        }
    }
}
