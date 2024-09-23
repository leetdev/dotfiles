## Download

Clone into ` ~/dotfiles`.

## Setup

### Packages

#### Ubuntu/Debian:

```shell
sudo apt update
sudo apt install nala
sudo nala install stow zsh fzf zoxide tmux entr build-essential
```
### Stow

[GNU Stow](https://www.gnu.org/software/stow/)

 ```shell
rm -f   ~/.profile ~/.gitconfig
cd  ~/dotfiles
stow .
 ```

### Shell

```shell
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### tmux

```shell
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
~/.config/tmux/plugins/tpm/bin/install_plugins
```

### go

```shell
wget https://go.dev/dl/go1.23.1.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.23.1.linux-amd64.tar.gz
```
