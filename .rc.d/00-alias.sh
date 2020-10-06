#!/bin/sh

if [ `uname -s` == 'Darwin' ]; then
    alias ls='ls -G';
else
    alias ls='ls --color=auto';
    if [ -n "$DESKTOP_SESSION" ]; then
        eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
        export SSH_AUTH_SOCK
    fi
fi

alias durg='du -d 1  | sort -rg'
alias grep='grep --color=auto'
