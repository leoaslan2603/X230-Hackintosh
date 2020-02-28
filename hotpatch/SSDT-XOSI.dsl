DefinitionBlock("", "SSDT", 2, "X230", "OC-XOSI", 0)
{
    Method(XOSI, 1)
    {
        If (_OSI ("Darwin"))
        {
            If (Arg0 == "Windows 2015")
            {
                Return (0xF)
            }
            Else
            {
                Return (Zero)
            }
        }
        
        Else
        {
            Return (_OSI (Arg0))
        }
    }
}