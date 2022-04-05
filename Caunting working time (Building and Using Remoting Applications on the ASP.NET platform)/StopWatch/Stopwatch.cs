using System;

public class Stopwatch : MarshalByRefObject
{
    DateTime mark = DateTime.Now;

    public void Start ()
    {
        mark = DateTime.Now;
    }

    public int Stop ()
    {
        return (int) ((DateTime.Now - mark).TotalMilliseconds);
    }
}