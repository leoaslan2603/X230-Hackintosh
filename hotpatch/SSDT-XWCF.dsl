DefinitionBlock ("", "SSDT", 2, "X230", "XWCF", 0)
{    
    Device(XWCF)
    {
        Name(_ADR, Zero)
        Name(MYLD, One)
        Name(MPWS, Zero)
        Name(MODE, One)
        Method (_STA, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }
    }
}