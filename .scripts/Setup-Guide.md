### Firefox:

Install the following extensions:

- Language Tool
- AdBlocker Ultimate
- Lastpass

### Snaps

```bash
sudo snap install code --classic
sudo snap install typora
```

### Packages

```bash
sudo apt-get install git arandr net-tools gcc g++ make
```

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

