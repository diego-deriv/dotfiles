# dotfiles

bash, tmux, vim and other configuration files

## bash_profile

Contains configuration for:

- bash prompt (PS1) display status, time, current working directory, git branch `0 [06:22] root@debian-wheezy /home/git/organization/repo (branch) #`
- git grep multiple repos
- delete git branch other than master
- list branches of all git repo
- list active branch of all git repos
- update branch with upstream

## tmux.conf

- easy resize in tmux
- enable mouse navigation for tmux pane
- resize tmux pane with mouse
- status bar for tmux
- enable up down key navigation for tmux

## vimrc

- vundle configuration for vim
- control p (ctrl-p) buffer
- git configuration in vim

---

## Importing configuration

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && wget -O ~/.vimrc https://raw.githubusercontent.com/diego-deriv/dotfiles/master/.vimrc && wget -O ~/.bash_profile https://raw.githubusercontent.com/diego-deriv/dotfiles/master/.bash_profile && curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh && sudo apt-get install exuberant-ctags
```
