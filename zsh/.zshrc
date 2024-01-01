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
autoload -Uz vcs_info # vcs stands for version control system 

top=''
precmd() { vcs_info ; echo -n "$top"; top=$'\n' }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST

a=$'\n'

glyph=$(test $TERM = 'xterm-256color' && echo '❯' || echo '>')

PS1='%~ %F{blue}%B${vcs_info_msg_0_}%b%f$a$glyph '
##################################################################################




################################## Lf file manager ##############################

function lf(){
	l=$(/usr/bin/lf -print-last-dir)
	test -f ~/.cache/lfcd && cd $l && rm ~/.cache/lfcd
}

#################################################################################




############################## Aliases #################################################
alias grep='grep --color=auto'

alias n="nvim"

alias t="sudo tlp start"

alias c="clear"

alias s="sensors"

alias clean="make clean"

alias ls='ls --color=auto'

alias clear='clear ; top=""'

alias xi='sudo xbps-install'

alias xr='sudo xbps-remove'

alias xq='xbps-query'
########################################################################################



#################################### Misc ############################################
bindkey -v
setopt autocd
######################################################################################
