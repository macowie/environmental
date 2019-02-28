# Environmental Windows Setup

The Windows set up differs greatly from macOS and Linux in that needs some
(a lot of) work to undo the Security/Privacy/Crapware issues you get out of the
box. And because the Linux subsystem is what makes it usable anyway, this is
focused on making the host OS hospitable, from there you can use the Linux
Environmental scripts to set up inside WSL

## Fresh Installation Procedure

See [Decent Security's Guide](https://decentsecurity.com/#/securing-your-computer/).

Pre-install Security

1. Disable Non-UEFI Boot Options
1. Enable TPM and Secure Boot
1. Disable Firewire/ExpressCard if applicable

Installation and base system

1. Delete existing OS partition if any
1. Update, Reboot, Repeat until no more updates avaiable
1. Check for further driver updates from OEM
1. Enable BitLocker (Start > Control Panel > BitLocker Drive Encryption > Turn on BitLocker)
1. Turn UAC all the way up (Covered in Security script below)
1. Install and run [ShutUp10](https://www.oo-software.com/en/shutup10 to disable
   onerous privacy settings. Their recommended settings are generally good.

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

## Scripts
Largely adapted from [Debloat-Windows-10](https://github.com/W4RH4WK/Debloat-Windows-10). But tweaked with my own preferences, and leaning towards security over pure privacy. For example, I do disable most telemetry, but I leave things like Defender and Update alone to do their thing.

### AppRemover

* Remove most third-party bundled crapware

### MiscPreferences

* Some miscellaneous tweaks I personally prefer.

### Services

* Disable Remote Registry, Remote Access

### Security

* Turn UAC all the way up

### AppInstaller

Uses [chocolatey](https://chocolatey.org/) to install stuff not available on the
app store.
