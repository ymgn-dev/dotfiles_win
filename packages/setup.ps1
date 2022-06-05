# Install packages via WinGet
# winget export --output .\packages\via_winget
winget import $PSScriptRoot\via_winget

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco -?

# Install packages via Chocolatey
# choco export --output-file-path .\packages\packages.config
choco install $PSScriptRoot\packages.config

# Install WSL2
wsl --install
wsl --install -d Ubuntu
wsl --update
wsl --upgrade