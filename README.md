# 事前準備

PowerShellスクリプトを管理者権限で起動し、次のコマンドを実行しておく。

```sh
Set-ExecutionPolicy RemoteSigned
```

# パッケージマネージャ

極力WinGet経由でインストールし、次にchocolatey経由でインストールする。
※PackageManagementは使用しない

- WinGet
- Chocolatey(https://chocolatey.org/install)

# WinGet経由

- Microsoft.PowerToys
- Microsoft.PowerShell
- Microsoft.VisualStudioCode
- Microsoft.VisualStudio.2022.Community
- Git.Git
- Google.Chrome
- Google.AndroidStudio
- Nvidia.GeForceExperience
- EpicGames.EpicGamesLauncher
- BlenderFoundation.Blender
- SlackTechnologies.Slack
- Valve.Steam
- Figma.Figma
- Fork.Fork
- Notion.Notion

# Chocolatey経由

- FVM
- Starship

# WSL2のインストール

```sh
wsl --install
wsl --install -d Ubuntu
wsl --update
wsl --upgrade
```

# マニュアルインストール

- Hack Regular Nerd Font Complete Windows Compatible(https://www.nerdfonts.com/font-downloads)
- Armoury Crate(https://rog.asus.com/jp/motherboards/rog-strix/rog-strix-b550-f-gaming-model/helpdesk_download)
- Affinify Designer(https://affinity.serif.com/ja-jp/)