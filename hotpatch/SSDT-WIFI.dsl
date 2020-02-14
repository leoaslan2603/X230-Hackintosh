DefinitionBlock ("", "SSDT", 2, "X230", "WIFI", 0)
{
    External (_SB.PCI0.RP02, DeviceObj)
    
    Scope (_SB.PCI0.RP02)
    {
        Device(PXSX)
        {
            Name (_ADR, 0)
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

    Scope (_SB.PCI0.RP02.PXSX)
    {
        Method (_DSM, 4, Serialized)
        {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            Local0 = Package()
            {
                "compatible", "pci14e4,432b"
            }
            Return (Local0)
        }
    }
}