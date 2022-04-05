using System;
using System.Runtime.Remoting;
using System.Runtime.Remoting.Channels;
using System.Runtime.Remoting.Channels.Tcp;

class MyApp
{
    static void Main ()
    {
        TcpClientChannel channel = new TcpClientChannel ();
        ChannelServices.RegisterChannel (channel);

        RemotingConfiguration.RegisterActivatedClientType
            (typeof (Stopwatch), "tcp://localhost:1234");

        Stopwatch sw = new Stopwatch ();
        sw.Start ();

        Console.WriteLine ("Press Enter to show elapsed time...");
        Console.ReadLine ();

        Console.WriteLine (sw.Stop () + " millseconds");
    }
}