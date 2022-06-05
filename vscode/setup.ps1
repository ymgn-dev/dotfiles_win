# code --list-extensions
foreach ($l in Get-Content $PSScriptRoot\vscode_extensions) {
    code --install-extension $l --force
}