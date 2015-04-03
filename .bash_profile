source /etc/profile

if [ -f /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash ]; then
    . /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
fi

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWSTASHSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
export PROMPT_COMMAND='__git_ps1 "$BLUE\u@\h:\W" "$BLUE\\\$ $LIGHT_GRAY "'
#export PS1='\[\033]0;\h:\007\]\[\e[0;34m\][\u@\h \W$(__git_ps1)]\$ \[\e[m\]'
#export PS1=$LIGHT_GRAY"\u@\h"'$(
#    if [[ $(__git_ps1) =~ \*\)$ ]]
#    # a file has been modified but not added
#    then echo "'$YELLOW'"$(__git_ps1 " (%s)")
#    elif [[ $(__git_ps1) =~ \+\)$ ]]
#    # a file has been added, but not commited
#    then echo "'$MAGENTA'"$(__git_ps1 " (%s)")
#    # the state is clean, changes are commited
#    else echo "'$CYAN'"$(__git_ps1 " (%s)")
#    fi)'$BLUE" \w"$GREEN"$ $LIGHT_GRAY"

source /Users/markdowney/.iterm2_shell_integration.bash

alias ll='ls -lah'
alias gg='git status'
