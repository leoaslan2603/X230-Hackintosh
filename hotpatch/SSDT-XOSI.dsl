DefinitionBlock ("", "SSDT", 2, "X230", "XOSI", 0)
{
    Method (XOSI, 1)
    {
        Local0 = Package()
        {
            "Windows",              // generic Windows query
            "Windows 2001",         // Windows XP
            "Windows 2001 SP2",     // Windows XP SP2
            "Windows 2006",         // Windows Vista
            "Windows 2006 SP1",     // Windows Vista SP1
            "Windows 2006.1",       // Windows Server 2008
            "Windows 2009",         // Windows 7/Windows Server 2008 R2
            "Windows 2012",         // Windows 8/Windows Server 2012
            "Windows 2013",         // Windows 8.1/Windows Server 2012 R2
            "Windows 2015",         // Windows 10/Windows Server TP
            "Windows 2016",       // Windows 10, version 1607
            "Windows 2017",       // Windows 10, version 1703
            "Windows 2017.2",     // Windows 10, version 1709
            "Windows 2018",       // Windows 10, version 1803
            "Windows 2018.2",     // Windows 10, version 1809
            "Windows 2019",       // Windows 10, version 1903
        }
        Return (Ones != Match(Local0, MEQ, Arg0, MTR, 0, 0))
    }
}