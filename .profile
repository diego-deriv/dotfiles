#!/bin/sh

# General Profile
export EDITOR="vim"
export VISUAL="vim"
export BROWSER="firefox"
export PERLDOC_PAGER='less -r'

PATH=${PATH}:~/bin:~/opt/bin:~/.local/bin
export PATH

# Custom aliases/functions and environment variables
if test -d ${HOME}/.profile.d; then
    for PROFILE_FILE in $(ls ${HOME}/.profile.d/*); do
        source "${PROFILE_FILE}"
    done
    unset PROFILE_FILE
fi

# NVM stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


# Perlbrew
#source ~/perl5/perlbrew/etc/bashrc
[ -s "$HOME/perl5/perlbrew/etc/bashrc" ] && source "$HOME/perl5/perlbrew/etc/bashrc"
[ -s "$HOME/perl5/perlbrew/etc/perlbrew-completion.bash" ] && source "$HOME/perl5/perlbrew/etc/perlbrew-completion.bash"

# Java
#export PATH="/usr/local/opt/openjdk/bin:$PATH"

#export GITHUB_USER=diego-binary
#export GITHUB_TOKEN=#
#export TOTP_SECRET=#
