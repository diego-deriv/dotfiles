#!/bin/sh

if [ `uname -s` == 'Darwin' ]; then
    alias code="/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron"
    alias tinyrepl="rlwrap -a tinyrepl"
    alias ls='ls -G'
    alias grep='grep --color=auto'
fi
