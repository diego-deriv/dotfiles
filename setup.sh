#!/bin/sh

curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
chmod +x ~/.git-prompt.sh



cp -v  .bash_profile .bashrc .profile .rc.d .vimrc .tmux.conf ${HOME}
