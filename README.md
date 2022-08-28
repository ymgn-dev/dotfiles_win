# 事前準備

PowerShellスクリプトを管理者権限で起動し、次のコマンドを実行しておく。

```sh
Set-ExecutionPolicy RemoteSigned
```

# インストール

1. このリポジトリをダウンロードして展開
2. PowerShellで次のコマンドを実行

```sh
.\bootstrap.ps1
```

# PowerShellのアップデート

```sh
winget upgrade --id Microsoft.Powershell --source winget
```

# WSL2 + Ubuntuのインストール

```sh
wsl --install -d Ubuntu-20.04
```

# WSL2上にCUDAのインストール

CUDAの公式サイトでWSL-Ubuntuのディストリビューションを選択してインストールする。￥

https://docs.nvidia.com/cuda/wsl-user-guide/index.html#running-cuda

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
- --id Starship.Starship

# Chocolatey経由

- FVM
- ~Starship~

# 各パッケージマネージャの設定ファイル吐き出し

```sh
# Winget
winget export --output .\packages\via_winge

# Chocolatey
choco export --output-file-path .\packages\packages.config
```

# WSL2のインストール

```sh
wsl --install
wsl --install -d Ubuntu
wsl --update
wsl --upgrade
```

# マニュアルインストール

- Hack Regular Nerd Font Complete Windows Compatible(https://www.nerdfonts.com/font-downloads)
```sh
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
```

- Armoury Crate(https://rog.asus.com/jp/motherboards/rog-strix/rog-strix-b550-f-gaming-model/helpdesk_download)
- Affinify Designer(https://affinity.serif.com/ja-jp/)
- UR22Cドライバー
  - https://japan.steinberg.net/jp/support/downloads/ur_c.html

# その他

Microsoft.PowerShell_profile.ps1が以下と一致しているか確認。

```sh
code $PROFILE
```

```ps1
# https://dev.to/ofhouse/add-a-bash-like-autocomplete-to-your-powershell-4257
# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# New-Alias <alias> <aliased-command>
New-Alias open ii

# Starship
Invoke-Expression (&starship init powershell)

# Auto suggestion for PowerShell
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
```
