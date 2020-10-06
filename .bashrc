#!/bin/bash

[[ $- != *i* ]] && return

source ~/.git-prompt.sh

NORMAL="\[\e[0m\]"
RED="\[\e[1;31m\]"
GREEN="\[\e[1;32m\]"
BLUE="\[\e[1;34m\]"
COLOR=$BLUE;
if [[ $EUID == 0 ]]; then
    COLOR=$RED
else
    COLOR=$GREEN
fi
PS1="$? $COLOR[$(date +%H:%M)][$NORMAL\u@\h$COLOR][$NORMAL\w$COLOR]$(__git_ps1 " ($NORMAL%s$COLOR)") # $NORMAL"

export PS1

# Custom aliases/functions and environment variables
if test -d ${HOME}/.rc.d; then
    for RC_FILE in ${HOME}/.rc.d/*.sh; do
        test -x "${RC_FILE}" && source "${RC_FILE}"
    done
    unset RC_FILE
fi


if [ `uname -s` == 'Darwin' ]; then
    if [ -d $(brew --prefix)/etc/bash_completion.d/ ]
    then
    for SCRIPT in $(brew --prefix)/etc/bash_completion.d/*
    do
        source ${SCRIPT}
    done
    fi
fi


