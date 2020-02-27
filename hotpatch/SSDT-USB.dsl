DefinitionBlock ("", "SSDT", 2, "X230", "USB", 0x00000000)
{
    Device (UIAC)
    {
        Name (_HID, "UIA00000")
        Name (RMCF, Package ()
        {
           "AppleBusPowerController", Package()
            {
                "kUSBSleepPortCurrentLimit", 2100,
                "kUSBSleepPowerSupply", 2600,
                "kUSBWakePortCurrentLimit", 2100,
                "kUSBWakePowerSupply", 3200,
            },
            "HUB1", Package ()
            {
                "port-count", Buffer () { 0x06, 0x00, 0x00, 0x00 }, 
                "ports", Package ()
                {
                    "HP13", Package ()
                    {
                        "portType", Zero, 
                        "port", Buffer () { 0x03, 0x00, 0x00, 0x00 }
                    }, 
                    "HP15", Package ()
                    {
                        "portType", Zero, 
                        "port", Buffer () { 0x05, 0x00, 0x00, 0x00 }
                    },
                    "HP16", Package ()
                    {
                        "portType", Zero, 
                        "port", Buffer () { 0x06, 0x00, 0x00, 0x00 }
                    },
                }
            }, 
            "HUB2", Package ()
            {
                "port-count", Buffer () { 0x06, 0x00, 0x00, 0x00 }, 
                "ports", Package ()
                {
                    "HP22", Package ()
                    {
                        "portType", Zero, 
                        "port", Buffer () { 0x02, 0x00, 0x00, 0x00 }
                    },
                    "HP23", Package ()
                    {
                        "portType", Zero, 
                        "port", Buffer () { 0x03, 0x00, 0x00, 0x00 }
                    },
                    "HP24", Package ()
                    {
                        "portType", Zero, 
                        "port", Buffer () { 0x04, 0x00, 0x00, 0x00 }
                    },
                    "HP25", Package ()
                    {
                        "portType", Zero, 
                        "port", Buffer () { 0x05, 0x00, 0x00, 0x00 }
                    },
                    "HP26", Package ()
                    {
                        "portType", Zero, 
                        "port", Buffer () { 0x06, 0x00, 0x00, 0x00 }
                    },
                }
            }, 
            "EH01", Package ()
            {
                "port-count", Buffer () { 0x01, 0x00, 0x00, 0x00 }, 
                "ports", Package ()
                {
                    "PR11", Package ()
                    {
                        "UsbConnector", 0xFF, 
                        "port", Buffer (){ 0x01, 0x00, 0x00, 0x00 }
                    }
                }
            }, 
            "EH02", Package ()
            {
                "port-count", Buffer () { 0x01, 0x00, 0x00, 0x00 }, 
                "ports", Package ()
                {
                    "PR21", Package ()
                    {
                        "UsbConnector", 0xFF, 
                        "port", Buffer (){ 0x01, 0x00, 0x00, 0x00 }
                    }
                }
            }, 

            "8086_1e31", Package ()
            {
                "port-count", Buffer () { 0x06, 0x00, 0x00, 0x00 }, 
                "ports", Package ()
                {
                    "HS01", Package ()
                    {
                        "UsbConnector", Zero, 
                        "port", Buffer () { 0x01, 0x00, 0x00, 0x00 }
                    },
                    "HS02", Package ()
                    {
                        "UsbConnector", Zero, 
                        "port", Buffer () { 0x02, 0x00, 0x00, 0x00 }
                    },
                    "HS03", Package ()
                    {
                        "UsbConnector", Zero, 
                        "port", Buffer () { 0x03, 0x00, 0x00, 0x00 }
                    },
                    "HS04", Package ()
                    {
                        "UsbConnector", Zero, 
                        "port", Buffer () { 0x04, 0x00, 0x00, 0x00 }
                    },
                    "SSP5", Package ()
                    {
                        "UsbConnector", 0x03, 
                        "port", Buffer () { 0x05, 0x00, 0x00, 0x00 }
                    },
                    "SSP6", Package ()
                    {
                        "UsbConnector", 0x03, 
                        "port", Buffer () { 0x06, 0x00, 0x00, 0x00 }
                    },
                }
            }
        })
    }
}

