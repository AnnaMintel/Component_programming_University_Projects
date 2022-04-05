using System;

public class Clock : MarshalByRefObject
{
    public string GetCurrentTime ()
    {
        return DateTime.Now.ToLongTimeString ();
    }
}