# Windows Setup

## Manual Steps

See [Decent Security's Guide](https://decentsecurity.com/#/securing-your-computer/).

Pre-install Security

1. Set a BIOS Password
1. Disable Non-UEFI Boot Options
1. Enable TPM and Secure Boot
1. Disable Firewire/ExpressCard if applicable

Installation and base system

1. Delete existing OS partition if any
1. Update, Reboot, Repeat until no more updates avaiable
1. Check for further driver updates from OEM
1. Enable BitLocker (Start > Control Panel > BitLocker Drive Encryption > Turn on BitLocker)
1. Turn UAC all the way up (Covered in Security script below)

Optional: Move user files to another partition and mount it in place on C:\
From [ServerFault](https://serverfault.com/questions/8187/whats-the-best-way-to-move-c-users-to-d-users-under-vista-w7/8211#8211)

1. Boot to the installation media, and get to the command prompt (press Shift + F10 on the install dialog)
1. Use Robocopy to copy C:\Users to D:\Users: robocopy c:\Users d:\Users /mir /xj /copyall
1. Verify that the files successfully copied
1. Delete c:\Users
1. Create junction that points to d:\Users: mklink c:\Users d:\Users /j



## Scripts
Largely adapted from [Debloat-Windows-10](https://github.com/W4RH4WK/Debloat-Windows-10). But tweaked with my own preferences, and leaning towards security over pure privacy. For example, I do disable most telemetry, but I leave things like Defender and Update alone to do their thing.

A supplement/alternative to the Privacy script is [ShutUp10](https://www.oo-software.com/en/shutup10), a portable set and quit tool. It provides clear explanations and recommendations for each setting.

Non-comprehensive Overview:

### AppRemover

* Remove most third-party bundled crapware

### MiscPreferences

### Privacy 

* Disable Wi-fi password sharing
* Disable telemetry
* Enable Do Not Track

### Services

* Disable Remote Registry, Remote Access

### Security

* Turn UAC all the way up

## Maintenence

See [Decent Security's Guide](https://decentsecurity.com/#/holiday-tasks/)

TL;DR:
1. Ensure Windows Update, Firewall, and Defender are up and running.
1. Run Disk Cleanup.
1. Repair corrupt components:

```
dism /Online /Cleanup-Image /RestoreHealth
sfc /scannow
```

