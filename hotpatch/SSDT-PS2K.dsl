DefinitionBlock ("", "SSDT", 2, "X230", "PS2K", 0)
{
    External (_SB.PCI0.LPCB.EC, DeviceObj)
    External (_SB.PCI0.LPCB.PS2K, DeviceObj)
    External (_SB.PCI0.LPCB.EC.XQ2B, MethodObj)
    External (_SB.LID, DeviceObj)
    External (_SB.SLPB, DeviceObj)
    External (XWCF.MPWS, IntObj)
    External (XWCF.MODE, IntObj)
    External (XWCF.MYLD, IntObj)
    
    Scope (_SB.PCI0.LPCB.EC)
    {
        Method (_Q14, 0, NotSerialized)
        {
            Notify (PS2K, 0x0406)
        }
        Method (_Q15, 0, NotSerialized)
        {
            Notify (PS2K, 0x0405)
        }
        Method (_Q13, 0, NotSerialized)
        {
            If (\XWCF.MODE==0)
            {
                If (\XWCF.MYLD!=0)
                {
                    \XWCF.MYLD=0
                }
                Else
                {
                    \XWCF.MYLD=1
                }
                Notify (\_SB.LID, 0x80)
            }
            Else
            {
                \XWCF.MPWS=1
                Notify (\_SB.SLPB, 0x80)
            }
        }
        Method (_Q2B, 0, NotSerialized)
        {
            If (\XWCF.MODE==0)
            {
                \XWCF.MYLD=1
                \_SB.PCI0.LPCB.EC.XQ2B()
            }
            Else
            {
                \XWCF.MPWS=1
                Notify (\_SB.SLPB, 0x80)
            }
        }
    }
    
    Scope (_SB.PCI0.LPCB.PS2K)
    {
        Method (_DSM, 4)
        {
            If (!Arg2) { Return (Buffer(One) { 0x03 } ) }
            Return (Package()
            {
                "RM,oem-id", "LENOVO",
                "RM,oem-table-id", "Thinkpad_TrackPad",
            })
        }
        
        Name(RMCF, Package()
        {
            "Keyboard", Package()
            {
                "Swap command and option", ">y",
                "Custom PS2 Map", Package()
                {
                Package(){},
                "e037=e01e",
                },
            },
        })
    }
}