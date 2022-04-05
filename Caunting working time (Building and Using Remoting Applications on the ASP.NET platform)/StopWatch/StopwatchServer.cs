using System;
using System.Runtime.Remoting;
using System.Runtime.Remoting.Channels;
using System.Runtime.Remoting.Channels.Tcp;

class MyApp
{
    static void Main ()
    {
        TcpServerChannel channel = new TcpServerChannel (1234);
        ChannelServices.RegisterChannel (channel);

        RemotingConfiguration.RegisterActivatedServiceType
            (typeof (Stopwatch));

        Console.WriteLine ("Press Enter to terminate...");
        Console.ReadLine ();
    }
}