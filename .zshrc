export ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
source ~/.zsh_plugins.sh

autoload -Uz compinit 
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;

zstyle ':completion:*' menu select

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export TERM=xterm-256color

eval "$(starship init zsh)"
export GROFF_NO_SGR=1

alias ls="colorls --sd"
alias la="colorls -a --sd"
alias ll="colorls -la --sd"
alias pip="pip3"
alias python="python3"
alias cat="bat"
alias wally='~/.builds/wally'
alias v="vim"
alias yin="yay -S"
alias y="yay"
alias zup="antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh"
alias c="code"
alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias zshrc="vim ~/.zshrc"
alias i3conf="vim ~/.config/i3/config"
alias polyconf="vim ~/.config/polybar/config"
alias vimrc="vim ~/.vimrc"
alias gd="git difftool"
export PATH="$HOME/scripts:$PATH"
export LD_PRELOAD=/usr/lib/libfreetype.so
export EDITOR=/usr/bin/vim
export BROWSER=/usr/bin/google-chrome-stable
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=23"

export NVM_DIR="$HOME/.nvm"
alias loadnvm="[ -s '$NVM_DIR/nvm.sh' ] && \. '$NVM_DIR/nvm.sh'; [ -s '$NVM_DIR/bash_completion' ] && \. '$NVM_DIR/bash_completion'"
