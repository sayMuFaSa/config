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
 ls='ls --color=auto --group-directories-first'\
 n='nvim'\
 t='sudo tlp start'\
 s='sensors'\
 mr='make run'\
 mc='make clean'\
 c='clear'\
 wget='wget --hsts-file=$HOME/.cache/.wget-hsts'




lf() {
	cd "$(/bin/lf -print-last-dir $@)"
}
eval "$(starship init zsh)"
setopt autocd
[ -f "$HOME/TODO.md" ] && bat --paging=never "$HOME/TODO.md"
