using System;
using System.IO;
using System.IO.Compression;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace TCP_Test_Server
{
    class Program
    {
        static void Main(string[] args)
        {
            new Thread(() =>
            {
                Thread.CurrentThread.IsBackground = true;
                while (true)
                {
                    Thread.Sleep(1000);
                    GC.Collect();
                }
            }).Start();
            new Thread(() =>
            {
                StartTCPPlayerServer();
            }).Start();
            //Console.WriteLine("Listening...");
            Console.WriteLine("Überwachung gestartet...");
            Console.ReadLine();
        }
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        private static string DecompressString(byte[] gzip)
        {
            var ReturnText = string.Empty;
            using (var stream = new GZipStream(new MemoryStream(gzip), CompressionMode.Decompress))
            {
                const int size = 4096;
                var buffer = new byte[size];
                using (var memory = new MemoryStream())
                {
                    int count = 1;
                    while (count > 0)
                    {
                        count = stream.Read(buffer, 0, size);
                        if (count > 0)
                        {
                            memory.Write(buffer, 0, count);
                        }
                    }
                    buffer = null;
                    try
                    {
                        ReturnText = Encoding.UTF8.GetString(memory.ToArray());
                    }
                    catch { }
                }
            }
            return ReturnText;
        }
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        private static void StartTCPPlayerServer()
        {
            var TCPPlayerServer = new TcpListener(IPAddress.Any, 50100);
            TCPPlayerServer.Start();
            while (true)
            {
                var client = TCPPlayerServer.AcceptTcpClient();
                Task.Factory.StartNew(() =>
                {
                    ManageTCPRequest(client);
                });
            }
        }
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        private static void ManageTCPRequest(TcpClient CurClient)
        {
            try
            {
                using (var stream = CurClient.GetStream())
                {
                    int bytesRead = 0, i = 0;
                    using (var ByteStream = new MemoryStream())
                    {
                        var buffer = new byte[CurClient.ReceiveBufferSize];
                        while (((bytesRead = stream.Read(buffer, 0, CurClient.ReceiveBufferSize)) != 0) && (i < 35))
                        {
                            ByteStream.Write(buffer, 0, bytesRead);
                            i++;
                        }
                        if (i != 35)
                        {
                            var Message = DecompressString(ByteStream.ToArray());
                            if (Message.Length > 0)
                            {
                                //Console.WriteLine("Message received: " + Message);
                                Console.WriteLine("Nachricht von " + Message + " erhalten.");
                            }
                        }
                    }
                    stream.Close();
                }
            }
            finally
            {
                if (!ReferenceEquals(CurClient, null))
                {
                    (CurClient as IDisposable).Dispose();
                    CurClient = null;
                }
            }
        }
    }
}
