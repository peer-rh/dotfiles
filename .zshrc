source "${HOME}/.zgen/zgen.zsh"
if ! zgen saved; then

    zgen oh-my-zsh
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/safe-paste
    zgen oh-my-zsh plugins/colored-man-pages
    zgen oh-my-zsh plugins/command-not-found
    zgen oh-my-zsh plugins/fzf
    zgen oh-my-zsh plugins/pip
    zgen oh-my-zsh plugins/vscode
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/dotenv
    zgen oh-my-zsh plugins/suse

    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-autosuggestions
    zgen load zsh-users/zsh-completions

    zgen save
fi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -Uz compinit
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;

export TERM=xterm-256color

eval "$(starship init zsh)"

alias v="vim"
alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias zshrc="vim ~/.dotfiles/.zshrc"
alias i3conf="vim ~/.dotfiles/.config/i3/config"
alias polyconf="vim ~/.dotfiles/.config/polybar/config"
alias vimrc="vim ~/.dotfiles/.vimrc"
