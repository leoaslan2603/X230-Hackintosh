DefinitionBlock ("", "SSDT", 2, "X230", "ALC269", 0)
{
    External (_SB_.PCI0.HDEF, DeviceObj)

    Scope (_SB.PCI0.HDEF)
    {
        Name (RMCF, Package ()
        {
            "CodecCommander", Package ()
            {
                "Custom Commands", Package ()
                {
                    Package (){}, 
                    Package ()
                    {
                        "Command", Buffer () { 0x01, 0x57, 0x08, 0x83 }, 
                        "On Init", ">y", 
                        "On Sleep", ">n", 
                        "On Wake", ">y"
                    }
                }, 
                "Perform Reset", ">n",
                "Send Delay", 0x0A, 
                "Sleep Nodes", ">n"
            }
        })
    }
}

