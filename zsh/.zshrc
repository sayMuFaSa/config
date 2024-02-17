######################### History ###############################################
HISTFILE=~/.cache/histfile
HISTSIZE=100000
SAVEHIST=100000

fzf-history-widget() {
	zle reset-prompt
	LBUFFER+=$(cat ~/.histfile | fzf -e --tac --height=10)
}

zle     -N            fzf-history-widget
bindkey -M emacs '^R' fzf-history-widget
bindkey -M vicmd '^R' fzf-history-widget
bindkey -M viins '^R' fzf-history-widget

#################################################################################


######################### Completion #############################################
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
##################################################################################



############################### Prompt ##########################################
. $CONFIG/zsh/prompt_new

# . $CONFIG/zsh/prompt_old
################################################################################



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

alias mr='make run'

alias mc='make clean'

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
