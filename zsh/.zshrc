HISTFILE=~/.cache/histfile
HISTSIZE=100000
SAVEHIST=100000
bindkey -M vicmd 'k' history-search-backward
bindkey -M vicmd 'j' history-search-forward


autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit


alias grep='grep --color=auto'
alias ls='ls --color=auto --group-directories-first'
alias n='nvim'
alias t='sudo tlp start'
alias s='sensors'
alias mr='make run'
alias mc='make clean'
alias c='clear'
alias wget='wget --hsts-file=$HOME/.cache/.wget-hsts'




lf() {
	cd "$(/bin/lf -print-last-dir $@)"
}
eval "$(starship init zsh)"
setopt autocd
[ -f "$HOME/TODO.md" ] && bat "$HOME/TODO.md"
