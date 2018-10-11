# App Installer

# Prefer the Store for automatic background updates
# Failing that, use Chocolatey Package Manager

Write-Output "Installing Chocolatey"
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Write-Output "Installing Browsers"
choco install firefox chromium -y

$utilities = @(
    "1password"
    "peazip.install"
    "windirstat"
    "qbittorrent"
    "rufus"
)

$media_tools = @(
    "vlc"
    "mpv"
    "youtube-dl"
    "audacity"
    "digikam"
    "retroarch"
    # "calibre"
    # "picard"
    # "handbrake.install"
    # "obs-studio"
)

Write-Output "Installing Utilties"
$utilities | ForEach-Object{choco install $_ --force -y}

Write-Output "Installing Multimedia Tools"
$media_tools | ForEach-Object{choco install $_ --force -y}

# Most dev tools live in WSL, but certain tools must (or are improved by)
# natively running in Windows for various reasons
# e.g GUI, filesystem interop, Selenium drivers for native browsers

$dev_tools = @(
    "SublimeText3"
    "vscode"
    "heroku-cli"
    "selenium-gecko-driver"
    "selenium-chrome-driver"
    "selenium-edge-driver"
    "selenium-ie-driver"
)

Write-Output "Installing Host OS Dev Tools"
choco install git.install --params="/NoShellIntegration /GitAndUnixToolsOnPath /SChannel" -y
$dev_tools | ForEach-Object{choco install $_ --force -y}


