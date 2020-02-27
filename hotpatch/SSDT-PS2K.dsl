DefinitionBlock ("", "SSDT", 2, "X230", "PS2K", 0)
{
    External (_SB_.PCI0.LPCB.EC, DeviceObj)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)

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
    Scope (_SB.PCI0.LPCB.PS2K)
    {
        Method (_DSM, 4, NotSerialized)
        {
            If (LNot (Arg2))
            {
                Return (Buffer () { 0x03 })
            }

            Return (Package ()
            {
                "RM,oem-id", "LENOVO", 
                "RM,oem-table-id", "Thinkpad_TrackPad"
            })
        }

        Name (RMCF, Package ()
        {
            "Keyboard", Package()
            {
                "ActionSwipeLeft",  "37 d, 21 d, 21 u, 37 u",
                "ActionSwipeRight", "37 d, 1e d, 1e u, 37 u",
                "SleepPressTime",   "1500",
                "Swap command and option", ">y",
            },
            "Synaptics TouchPad", Package ()
            {
                "BogusDeltaThreshX", 100,
                "BogusDeltaThreshY", 100,
                "Clicking", ">y",
                "DragLockTempMask", 0x40004,
                "DynamicEWMode", ">n",
                "FakeMiddleButton", ">n",
                "HWResetOnStart", ">y",
                "PalmNoAction When Typing", ">y",
                "ScrollResolution", 800,
                "SmoothInput", ">y",
                "UnsmoothInput", ">y",
                "Thinkpad", ">y",
                "DivisorX", 1,
                "DivisorY", 1,
                "FingerZ", 47,
                "MaxTapTime", 100000000,
                "MomentumScrollThreshY", 16,
                "MouseMultiplierX", 8,
                "MouseMultiplierY", 8,
                "MouseScrollMultiplierX", 2,
                "MouseScrollMultiplierY", 2,
                "MultiFingerHorizontalDivisor", 4,
                "MultiFingerVerticalDivisor", 4,
                "Resolution", 3200,
                "ScrollDeltaThreshX", 10,
                "ScrollDeltaThreshY", 10,
            },
        })
    }
}
