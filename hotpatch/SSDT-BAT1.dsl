DefinitionBlock ("", "SSDT", 2, "X230", "BAT1", 0)
{
    External (_SB.PCI0.LPCB.EC.BAT1, DeviceObj)
    External (_SB.PCI0.LPCB.EC.BAT1.XSTA, MethodObj)
    Scope (\_SB.PCI0.LPCB.EC.BAT1)
    {
        Method (_STA, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC.BAT1.XSTA())
            }
        }
    }
}