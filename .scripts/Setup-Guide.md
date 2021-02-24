### Firefox:

Extensions:
- Language Tool
- AdBlocker Ultimate
- Lastpass

### Snaps

```bash
sudo snap install code --classic
sudo snap install typora
sudo snap install slack --classic
```

### Packages

```bash
sudo apt-get install curl git arandr net-tools gcc g++ make ssh
```

In Ubuntu:
```bash
sudo apt-get install gnome-tweaks
```

Tweaks:
- General > Disable animations > Yes
- Top Bar > Battery Percentage > Yes

### Manual Configs

Add to `.bashrc`: 

```bash
alias dgit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

```bash
git clone --bare https://github.com/emirelesg/dotfiles.git .dotfiles
dgit config --local status.showUntrackedFiles no
```

Execute `./scripts/configure-vscode.sh`

### Spotify

https://www.spotify.com/de/download/linux/

```bash
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client
```

### VS-Code

Extensions:
- ESLint
- Prettier
- Editorconfig
- GitGraph
- Import Cost
- JSON Tools
- Markdown Preview Enhanced
- Remote - SSH

Icons:
- Material Icon Theme

Themes:
- 1984
- Andromeda
- Blueberry dark theme
- Enki
- Halcyon
- Horizon
- Night Owl
- Panda Theme
- Sapphire
- Shades of Purple
- SynthWave '84

### Keyboard

sudo dpkg-reconfigure locales

Select
- de_DE.UTF-8
- en_US.UTF-8
- es_MX.UTF-8

### NVM

https://github.com/nvm-sh/nvm

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash
nvm install lts/erbium
nvm alias default lts/erbium
npm install -g yarn
``

