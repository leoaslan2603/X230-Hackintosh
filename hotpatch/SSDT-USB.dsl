DefinitionBlock ("", "SSDT", 2, "X230", "UIAC", 0)
{
    Device (UIAC)
    {
        Name (_HID, "UIA00000")
        Name (RMCF, Package ()
        {
            "HUB1", Package ()
            {
                "port-count", Buffer () {6, 0, 0, 0}, 
                "ports", Package ()
                {
                    "HP13", Package ()
                    {
                        "portType", Zero, 
                        "port", Buffer () {3, 0, 0, 0}
                    }, 
                    "HP15", Package ()
                    {
                        "portType", Zero, 
                        "port", Buffer () {5, 0, 0 ,0}
                    }, 
                    "HP16", Package ()
                    {
                        "portType", Zero, 
                        "port", Buffer () {6, 0, 0, 0}
                    }
                }
            }, 
            "HUB2", Package ()
            {
                "port-count", Buffer () {6, 0, 0, 0}, 
                "ports", Package ()
                {
                    "HP22", Package ()
                    {
                        "portType", Zero, 
                        "port", Buffer () {2, 0, 0, 0}
                    }, 
                    "HP23", Package ()
                    {
                        "portType", Zero, 
                        "port", Buffer () {3, 0, 0, 0}
                    }, 
                    "HP24", Package ()
                    {
                        "portType", Zero, 
                        "port", Buffer () {4, 0, 0 ,0}
                    }, 
                    "HP25", Package ()
                    {
                        "portType", Zero, 
                        "port", Buffer () {5, 0, 0, 0}
                    }, 
                    "HP26", Package ()
                    {
                        "portType", Zero, 
                        "port", Buffer () {6, 0, 0, 0}
                    }
                }
            }, 
            "EH01", Package ()
            {
                "port-count", Buffer () {1, 0, 0, 0}, 
                "ports", Package ()
                {
                    "PR11", Package ()
                    {
                        "UsbConnector", 0xFF, 
                        "port", Buffer () {1, 0, 0, 0}
                    }
                }
            }, 
            "EH02", Package ()
            {
                "port-count", Buffer () {1, 0, 0, 0}, 
                "ports", Package ()
                {
                    "PR21", Package ()
                    {
                        "UsbConnector", 0xFF, 
                        "port", Buffer () {1, 0, 0, 0}
                    }
                }
            }, 
            "8086_1e31", Package ()
            {
                "port-count", Buffer () {6, 0, 0, 0}, 
                "ports", Package ()
                {
                    "HS01", Package ()
                    {
                        "UsbConnector", Zero, 
                        "port", Buffer () {1, 0, 0, 0}
                    },
                    "HS02", Package ()
                    {
                        "UsbConnector", Zero, 
                        "port", Buffer () {2, 0, 0, 0}
                    },
                    "HS03", Package ()
                    {
                        "UsbConnector", Zero, 
                        "port", Buffer () {3, 0, 0, 0}
                    },
                    "HS04", Package ()
                    {
                        "UsbConnector", Zero, 
                        "port", Buffer () {4, 0, 0, 0}
                    },
                    "SSP5", Package ()
                    {
                        "UsbConnector", 0x03, 
                        "port", Buffer () {5, 0, 0, 0}
                    },
                    "SSP6", Package ()
                    {
                        "UsbConnector", 0x03, 
                        "port", Buffer () {6, 0, 0, 0}
                    },
                }
            }
        })
    }
}