#!/bin/bash

[[ $- != *i* ]] && return

# FOR THE PROMPT!
if [ `uname -s` == 'Darwin' ]; then
    if [ -d $(brew --prefix)/etc/bash_completion.d/ ]
    then
    for SCRIPT in $(brew --prefix)/etc/bash_completion.d/*
    do
        source ${SCRIPT}
    done
    fi
else
        [ -e /etc/bash_completion ] && source /etc/bash_completion
fi

NORMAL="\[\e[0m\]"
RED="\[\e[1;31m\]"
GREEN="\[\e[1;32m\]"
BLUE="\[\e[1;34m\]"
COLOR=$BLUE;
if [[ $EUID == 0 ]]; then
    COLOR=$RED
    PROMPT="#"
else
    COLOR=$GREEN
    PROMPT="\$"
fi
PS1="$?$COLOR[$(date +%H:%M)][$NORMAL\u@\h$COLOR][$NORMAL\w$COLOR]$(__git_ps1 " ($NORMAL%s$COLOR)")$PROMPT $NORMAL"

export PS1

# Custom aliases/functions and environment variables
if test -d ${HOME}/.rc.d; then
    for RC_FILE in $(ls ${HOME}/.rc.d/*) ; do
        source "${RC_FILE}"
    done
    unset RC_FILE
fi




