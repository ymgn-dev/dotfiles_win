# SymbolicLink
Remove-Item $env:APPDATA\Code\User\settings.json
New-Item -Value $PSScriptRoot\symlinks\Code\User\settings.json -Path $env:APPDATA\Code\User\ -Name settings.json -ItemType SymbolicLink

Remove-Item $env:APPDATA\Code\User\keybindings.json
New-Item -Value $PSScriptRoot\symlinks\Code\User\keybindings.json -Path $env:APPDATA\Code\User\ -Name keybindings.json -ItemType SymbolicLink

Remove-Item $env:APPDATA\Code\User\snippets\dart.json
New-Item -Value $PSScriptRoot\symlinks\Code\User\snippets\dart.json -Path $env:APPDATA\Code\User\snippets\ -Name dart.json -ItemType SymbolicLink

# Install VSCode Extensions
"----------"
code --list-extensions
"----------"
""

foreach ($l in Get-Content $PSScriptRoot\vscode_extensions) {
    code --install-extension $l --force
}