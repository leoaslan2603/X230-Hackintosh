# X230-Hackintosh
macOS for ThinkPad X230 (Mojave & Catalina)

2/28/2020 - Clover bootloader (OpenCore soon)

## Pre-Installation

### 1. Update BIOS!!!
- Modified BIOS: [Github](https://github.com/n4ru/1vyrain/)

### 2. BIOS settings

### BIOS settings
| Item | Setting |
| ------------- | ------------ |
| Config/Network/Wake On Lan | Disabled |
| USB UEFI BIOS Support | Enabled |
| Always On USB | Disabled | 
| USB 3.0 Mode | Enabled | 
| Power Intel Rapid Start Technology | Disabled | 
| Serial SATA Controller Mode Option | AHCI |
| Security Predesktop Authentication | Disabled |
| Security Chip | Disabled | 
| Memory Protection Execution Prevention | Enabled | 
| Virtualization | Disabled |
| Fingerprint Reader | Disabled | 
| Anti Theft | Disabled | 
| Computrace | Disabled | 
| Secure Boot | Disabled | 
| Startup Network Boot | PCI Lan | 
| UEFI/Legacy Boot | UEFI Only | 
| CSM Support | Disabled | 
| Boot Mode | Quick |

### 3. Hardware

|Compenent|Reference|
|---|---|
|CPU|Intel Core i5-3320M vPro|
|RAM|DDR3L 12GB Bus 1600MHz|
|GFX|Intel HD Graphics 4000|
|Sound|Realtek ALC269|
|Display|12.5" IPS LCD|
|WIFI|Intel Centrino® Advanced-N 6205|

#### What will work:
- Power Management (C/P-States, Fan RPM, Speedstep, etc)
- HD Intel Graphic Card (HD4000)
- Sleep (Sleep from menu + lid close sleep)
- Camera
- Ethernet
- Battery Status
- Brightness
- Keyboard, Trackpad and Trackpoint
- Sound (automatic headphone detection, mute, volume controls fully working)
- USB Ports
- SD Card Reader
- Bluetooth

#### Not working:
- Fingerprint Reader
- VGA

#### WIFI:
Inbuilt Intel WiFi won't work out of the box.

You can flash the BIOS and remove the whitelist if you plan to use Broadcom WLAN cards
- Atheros AR5B95 (Lenovo Part number: 20002357) - 802.11a/b/g/n 2.4 GHz (Drop support 10.14 and newer)
- Dell DW1510 – 802.11a/b/g/n 2.4 GHz & 5 GHz (Broadcom) (Drop support 10.15)
- Dell DW1515 – 802.11a/b/g/n 2.4 GHz & 5 GHz (Atheros)
- Dell DW1550 – 802.11ac 2.4 GHz & 5 GHz (Broadcom) (Recommended, natively 10.14 10.15)

## Installation

....

## Post-Installation

### 1. Tools needed

- Clover Installer (https://github.com/CloverHackyColor/CloverBootloader/releases)
- OpenCore (soon)

### 2. Kexts used
- ACPIBatteryManager.kext
- ACPIPoller.kext
- AppleALC.kext
- BrcmBluetoothInjector.kext (requires for BrcmPatchRAM3.kext)
- BrcmFirmwareData.kext
- BrcmPatchRAM2.kext (BrcmPatchRAM3.kext for Catalina)
- EFICheckDisabler.kext
- FakeSMC.kext
- IntelMausi.kext
- Lilu.kext
- USBPorts.kext
- VoodooPS2Controller.kext
- VoodooSDHC.kext
- WhateverGreen.kext

### 3. Patched
- Copy patch to /ACPI/patched/

## Issue:
### Sound after sleep issues

* CodecCommander loaded in /L/E w/ Kext Utility

### Reband Broadcom Wireless
* Reband as APPLE AIRPORT EXTREME: [LINK](http://blog.legendt.com/rebranding-broadcom-802-11a-b-g-n-cards/)

### DW1510 on Catalina
* Copy IO80211Family.kext on on my EFI to CLOVER/kexts/10.15/

## Support me:

- Paypal: https://www.paypal.me/thebinhluong0519
- Ethereum: 0xC202255193D95979A7C937aA3CB5220FAD9E2aBe
