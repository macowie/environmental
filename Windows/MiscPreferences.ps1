# Miscellaneous Prefs

Write-Output "Explorer: Setting default view to This PC"
Set-ItemProperty "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "LaunchTo" 1

Write-Output "Explorer: Show file extensions"
Set-ItemProperty "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "HideFileExt" 0

# Write-Output "Explorer: Show hidden files"
# Set-ItemProperty "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Hidden" 1

# Write-Output "Explorer: Show super hidden files"
# Set-ItemProperty "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "ShowSuperHidden" 1

Write-Output "Shell: hide taskbar search"
# 0 = hide completely, 1 = show only icon, 2 = show long search box
Set-ItemProperty "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search" "SearchboxTaskbarMode" 0

Write-Out "Enable Windows Subsystem for Linux (reboot required)"
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux