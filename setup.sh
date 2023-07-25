#!/bin/sh
# Builds the DRZ environment

set -eu

echo 'Base directory'
for i in bin src mnt tmp opt .profile.d .rc.d ; do
    mkdir -vp "${HOME}/${i}"
done

echo 'The .ssh directory'
mkdir -vp ${HOME}/.ssh

echo 'Secure permissions for .ssh'
chmod 700 ${HOME}/.ssh

echo 'Installing global dotfiles'
for i in .bash_profile .profile .bashrc .vimrc .tmux.conf ; do
    install -v ${i} ${HOME}
done

echo 'Installing .profile.d dotfiles'
for i in $(ls .profile.d/*)  ; do
    install -v "${i}" ${HOME}/.profile.d
done

echo 'Installing .profile.d dotfiles'
for i in $(ls .rc.d/*) ; do 
    install -v "${i}" ${HOME}/.profile.d
done

echo 'The Vundle Vim plugin manager'
VUNDLE=${HOME}/.vim/bundle/Vundle.vim
if [ ! -e $VUNDLE ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE && \
    vim +PluginInstall +qall &> /dev/null
fi

echo "DRZ"
