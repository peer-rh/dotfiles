source ~/.zsh_plugins.sh

autoload -Uz compinit 
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
    antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
else
	compinit -C;
fi;

zstyle ':completion:*' menu select

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export TERM=xterm-256color

eval "$(starship init zsh)"
eval "`pip completion --zsh`"
compctl -K _pip_completion pip3
export GROFF_NO_SGR=1

alias ls="ls --color=auto"
alias pip="pip3"
alias python="python3"
alias v="vim"
alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias zshrc="vim ~/.dotfiles/.zshrc"
alias i3conf="vim ~/.dotfiles/.config/i3/config"
alias polyconf="vim ~/.dotfiles/.config/polybar/config"
alias vimrc="vim ~/.dotfiles/.vimrc"
