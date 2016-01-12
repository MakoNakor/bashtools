source ~/.profile
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"

export PATH=/usr/local/bin:$PATH
export CLICOLOR=1
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWSTASHSTATE=true
export LSCOLORS=exfxcxdxbxegedabagacad

alias ll='ls -al'
alias go='ssh -p922'
alias gg='git status'
alias build="ant -propertyfile ~/antprops.prop"

export PROMPT_COMMAND='__git_ps1 "\[\033]0;\w\007\]$BLUE[\u@\h:\W" "$BLUE]\\\$$LIGHT_GRAY "'

complete -F _known_hosts go
source ~/.iterm2_shell_integration.bash
