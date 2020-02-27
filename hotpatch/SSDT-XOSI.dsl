DefinitionBlock ("", "SSDT", 2, "X230", "XOSI", 0)
{
    Method (XOSI, 1, NotSerialized)
    {
        Store (Package ()
            {
                "Windows", 
                "Windows 2001", 
                "Windows 2001.1", 
                "Windows 2001 SP1", 
                "Windows 2001 SP2", 
                "Windows 2006", 
                "Windows 2006 SP1", 
                "Windows 2006.1", 
                "Windows 2009"
            }, Local0)
        Return (LNotEqual (Ones, Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
    }
}

