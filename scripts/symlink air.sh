#!/bin/bash
# Symlinks your bash and vim config files
if [ -d ~/.oh-my-zsh ]; then 
  echo symlinking
  #echo ln -nfs ~/Dropbox/Library/dotfiles/bashrc ~/.bashrc
  #ln -nfs ~/bin/dotfiles/bashrc ~/.bashrc
  #echo ln -nfs ~/Dropbox/Library/dotfiles/bash_profile ~/.bash_profile
  #ln -nfs ~/Dropbox/Library/dotfiles/bash_profile ~/.bash_profile
  echo ln -nfs ~/Dropbox/Library/dotfiles/vimrc ~/.vimrc
  ln -nfs ~/Dropbox/Library/dotfiles/vimrc ~/.vimrc
  echo ln -nfs ~/Dropbox/Library/dotfiles/gvimrcAir ~/.gvimrc air
  ln -nfs ~/Dropbox/Library/dotfiles/gvimrcAir ~/.gvimrc
  echo ln -nfs ~/Dropbox/Library/dotfiles/vim ~/.vim
  ln -nfs ~/Dropbox/Library/dotfiles/vim ~/.vim
  echo ln -nfs ~/Dropbox/Library/dotfiles/hgrc ~/.hgrc
  ln -nfs ~/Dropbox/Library/dotfiles/hgrc ~/.hgrc
  echo ln -nfs ~/Dropbox/Library/dotfiles/zshrc ~/.zshrc
  ln -nfs ~/Dropbox/Library/dotfiles/zshrc ~/.zshrc
  echo ln -nfs ~/Dropbox/Library/dotfiles/zsh/themes/znake.zsh-theme ~/.oh-my-zsh/themes
  ln -nfs ~/Dropbox/Library/dotfiles/zsh/themes/znake.zsh-theme ~/.oh-my-zsh/themes
else 
  echo "please install oh-my-zsh"
fi

