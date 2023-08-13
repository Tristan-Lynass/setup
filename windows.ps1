# Manual Install Required: Battle.net, pureref

# General Windows Setup
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Value 0 -PropertyType DWORD -Force # Show file extensions (https://superuser.com/a/1627155)
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Hidden" -Value 1 -PropertyType DWORD -Force # Show fidden files, folders and drives
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState" -Name "FullPath" -Value 1 -PropertyType DWORD -Force # Show full path in explorer
New-ItemProperty -Path "HKCU:\AppEvents\Schemes" -Name "(Default)" -Value ".None" -Force # Disable annoying windows sound scheme https://superuser.com/a/1397681

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

$general = @(
"googlechrome",
"7zip.install",
"vlc",
"gimp",
"audacity",
"qbittorrent", # Setup temp folder and done folder
"blender",
"obs-studio",
"hashtab",
"geforce-experience", # Install drivers
"everything",
"ffmpeg",
"greenshot",
"spotify",
"winscp",
"docker-desktop",
"imageglass", # disable auto update with this config in igconfig.xml <Item key="AutoUpdate" value="0" />
"windirstat"
)

$development = @(
"nvm.install", # Install latest node version
"notepadplusplus.install",
"jetbrainstoolbox", # IntelliJ, Webstorm, Ultimate, &/or Android Studio
"postman",
"vscode", # Install extensions (Arduino)
"python",
"postgresql", # Set main password = 'password'
"git",
"microsoft-windows-terminal", # Configure
"javadecompiler-gui"
)

$gaming = @(
"steam",
"discord.install",
"twitch",
"uplay",
"origin",
"epicgameslauncher"
)

$utilities = @(
"graphicsmagick", # Graphics CLI
"gpu-z", # GPU Information
"handbrake", # Rip video from DVDs
"recuva",
"hwmonitor" #  hardware monitoring program that reads PC systems main health sensors voltages, temperatures, fans speed.
"openvpn",
"3dmark" # GPU Benchmarking & Stress test
)

choco install -y $general $development $gaming