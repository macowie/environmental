# App Installer

# Prefer the Store for automatic background updates
# Failing that, use Chocolatey Package Manager

Write-Output "Installing Chocolatey"
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Write-Output "Installing Browsers"
choco install firefox chromium -y

Write-Output "Installing Utilties"
choco install 1password -y
choco install peazip -y
choco install vlc -y
choco install mpv -y
choco install youtube-dl -y
choco install rufus -y
choco install digikam -y
choco install retroarch -y

# Extras
# choco install calibre
# choco install picard
# choco install handbrake.install
# choco install obs-studio

# Most dev tools live in WSL, but certain tools must (or are improved by)
# natively running in Windows for various reasons
# e.g GUI, filesystem interop, Selenium drivers for native browsers
Write-Output "Installing Host OS Dev Tools"
choco install SublimeText3 -y
choco install vscode -y
choco install git.install --params="/NoShellIntegration /GitAndUnixToolsOnPath /SChannel" -y
choco install heroku-cli -y
choco install selenium-gecko-driver -y
choco install selenium-chrome-driver -y
choco install selenium-edge-driver -y
choco install selenium-ie-driver -y

