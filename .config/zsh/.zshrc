# source
source /usr/share/zsh/scripts/zgen/zgen.zsh

# zgen
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh
	zgen oh-my-zsh plugins/git
	zgen oh-my-zsh plugins/sudo
	zgen oh-my-zsh plugins/command-not-found
	zgen load zsh-users/zsh-syntax-highlighting
    zgen load tarruda/zsh-autosuggestions

    zgen save
fi

# enable autosuggestions automatically
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

# allow completion of aliases
setopt completealiases

# history
HISTSIZE=100
SAVEHIST=100
HISTFILE=~/.config/zsh/history
setopt HIST_IGNORE_DUPS

# environment variables
export PATH=$PATH:~/.local/bin
export MPD_HOST=10.0.0.16

# beets
alias beetup='beet mbsync'
alias imptorr='beet import /mnt/files/downloads/torrents/complete'
alias impslsk='beet import /mnt/files/downloads/soulseek/complete'

# git
alias cdgit='cd /mnt/files/documents/repositories'

# music
alias music='ncmpcpp -c ~/.config/ncmpcpp/config'

# networking
alias nstatus1='systemctl status systemd-networkd.service'
alias nstatus2='systemctl status pia.service'

# pacman / yaourt
alias pacup='sudo pacman -Syyu'
alias pacin='sudo pacman -S'
alias pacre='sudo pacman -Rns'
alias yogup='yaourt -Syua --devel'
alias yogin='yaourt -S'

# systemd
alias dena='sudo systemctl enable'
alias ddis='sudo systemctl disable'
alias dsta='sudo systemctl start'
alias dsto='sudo systemctl stop'
alias dres='sudo systemctl restart'
alias drel='sudo systemctl reload'
alias dstat='sudo systemctl status'
alias uena='systemctl --user enable'
alias udis='systemctl --user disable'
alias usta='systemctl --user start'
alias usto='systemctl --user stop'
alias ures='systemctl --user restart'
alias urel='systemctl --user reload'
alias ustat='systemctl --user status'

# vim
alias vcedit='sudo vim /usr/share/vim/vim74/colors/template.vim'

# miscellaneous
alias chrc='source ~/.local/config/zsh/.zshrc'
alias viz='mpdviz -v "spectrum"'
