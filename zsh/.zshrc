######################### History ###############################################
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
#################################################################################



######################### Completion #############################################
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
##################################################################################




################################ Prompt #########################################
precmd() { echo -n "$top"; top=$'\n' ; branch=$(git branch --show-current 2> /dev/null) }

setopt PROMPT_SUBST

new_line=$'\n'

glyph=$((test $TERM = 'xterm-256color' || test $TERM = 'st-256color') && echo '❯' || echo '>')

PS1='%~ %F{blue}%B$branch%b%f$new_line$glyph '
##################################################################################




################################## Lf file manager ##############################
function lf() {
	l=$(/usr/bin/lf -print-last-dir)
	test -f ~/.cache/lfcd && cd $l && rm ~/.cache/lfcd
}

#################################################################################




############################## Aliases #################################################
alias grep='grep --color=auto'

alias n='nvim'

alias t='sudo tlp start'

alias s='sensors'

alias clean='make clean'

alias ls='ls --color=auto --group-directories-first'

alias lsd='eza -lh --group --git --git-ignore --icons'

alias clear='clear && top=""'

alias c='clear'

alias xi='sudo xbps-install'

alias xr='sudo xbps-remove'

alias xq='xbps-query'
########################################################################################



#################################### Misc ############################################
bindkey -v
setopt autocd
######################################################################################
