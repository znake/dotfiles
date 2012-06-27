#!/bin/bash
# Symlinks your bash and vim config files
CURRENT_DIR="$( cd "$( dirname "$0" )" && pwd )"
if [ -d ~/.oh-my-zsh ]; then
  echo symlinking
  echo ln -nfs $CURRENT_DIR/../vimrc ~/.vimrc
  ln -nfs $CURRENT_DIR/../vimrc ~/.vimrc
  echo ln -nfs $CURRENT_DIR/../gvimrcAir ~/.gvimrc
  ln -nfs $CURRENT_DIR/../gvimrcAir ~/.gvimrc
  echo ln -nfs $CURRENT_DIR/../vim ~/.vim
  ln -nfs $CURRENT_DIR/../vim ~/.vim
  echo ln -nfs $CURRENT_DIR/../hgrc ~/.hgrc
  ln -nfs $CURRENT_DIR/../hgrc ~/.hgrc
  echo ln -nfs $CURRENT_DIR/../gitconfig ~/.gitconfig
  ln -nfs $CURRENT_DIR/../gitconfig ~/.gitconfig
  echo ln -nfs $CURRENT_DIR/../zshrc ~/.zshrc
  ln -nfs $CURRENT_DIR/../zshrc ~/.zshrc
  echo ln -nfs $CURRENT_DIR/../zsh/themes/znake.zsh-theme ~/.oh-my-zsh/themes
  ln -nfs $CURRENT_DIR/../zsh/themes/znake.zsh-theme ~/.oh-my-zsh/themes
else
  echo "please install oh-my-zsh"
fi

# old ->
# echo ln -nfs $CURRENT_DIR/../bashrc ~/.bashrc
# ln -nfs ~/bin/dotfiles/bashrc ~/.bashrc
# echo ln -nfs $CURRENT_DIR/../bash_profile ~/.bash_profile
# ln -nfs $CURRENT_DIR/../bash_profile ~/.bash_profile

