using System;
using System.IO;
using System.IO.Compression;
using System.Net.Sockets;
using System.Text;

namespace TCP_Test_Client
{
    class Program
    {
        static void Main(string[] args)
        {
            //Console.WriteLine("Type in the IPv4 adress of the server (XXX.XXX.XXX.XXX):");
            Console.WriteLine("Geben Sie die IP-Adresse des Servers ein (XXX.XXX.XXX.XXX):");
            var ServerIP = Console.ReadLine().Replace(" ", string.Empty);
            //Console.WriteLine("Type your message to the server (anything):");
            Console.WriteLine("Geben Sie ein Erkennungsnamen ein (Irgendwas):");
            var Message = Console.ReadLine();
            try
            {
                using (var CurClient = new TcpClient(ServerIP, 50100))
                {
                    using (var CurStream = CurClient.GetStream())
                    {
                        var PlayerData = CompressString(Message);
                        CurStream.Write(PlayerData, 0, PlayerData.Length);
                    }
                    CurClient.Close();
                }
                //Console.WriteLine("<<<<<It works>>>>>");
                Console.WriteLine("<<<<<Es hat funktioniert>>>>>");
            }
            catch (Exception ex)
            {
                //Console.WriteLine("!!!!!Error!!!!!");
                Console.WriteLine("!!!!!Fehler!!!!!");
                Console.WriteLine("---------------------------------------------------");
                Console.WriteLine(ex.Message);
                Console.WriteLine("---------------------------------------------------");
                Console.WriteLine(ex.StackTrace);
            }
            Console.ReadLine();
        }
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        private static byte[] CompressString(string text)
        {
            var raw = Encoding.UTF8.GetBytes(text);
            using (var memory = new MemoryStream())
            {
                using (var gzip = new GZipStream(memory, CompressionMode.Compress, true))
                {
                    gzip.Write(raw, 0, raw.Length);
                }
                raw = memory.ToArray();
            }
            return raw;
        }

    }
}
