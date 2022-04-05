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

        RemotingConfiguration.RegisterWellKnownClientType
            (typeof (Clock), "tcp://localhost:1234/Clock");

        Clock clock = new Clock ();
        Console.WriteLine (clock.GetCurrentTime ());
        Console.ReadLine();
    }
}