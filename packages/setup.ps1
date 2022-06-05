# Install packages via WinGet
# winget export --output .\packages\via_winget
winget import $PSScriptRoot\via_winget

# Install packages via Chocolatey
# choco export --output-file-path .\packages\packages.config
choco install $PSScriptRoot\packages.config