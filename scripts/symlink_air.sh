#!/bin/bash
# Symlinks your bash and vim config files
if [ -d ~/.oh-my-zsh ]; then
  echo symlinking
  echo ln -nfs ~/Dropbox/Library/dotfiles/vimrc ~/.vimrc
  ln -nfs ~/Dropbox/Library/dotfiles/vimrc ~/.vimrc
  echo ln -nfs ~/Dropbox/Library/dotfiles/gvimrcAir ~/.gvimrc
  ln -nfs ~/Dropbox/Library/dotfiles/gvimrcAir ~/.gvimrc
  echo ln -nfs ~/Dropbox/Library/dotfiles/vim ~/.vim
  ln -nfs ~/Dropbox/Library/dotfiles/vim ~/.vim
  echo ln -nfs ~/Dropbox/Library/dotfiles/gitconfig ~/.gitconfig
  ln -nfs ~/Dropbox/Library/dotfiles/gitconfig ~/.gitconfig
  echo ln -nfs ~/Dropbox/Library/dotfiles/hgrc ~/.hgrc
  ln -nfs ~/Dropbox/Library/dotfiles/hgrc ~/.hgrc
  echo ln -nfs ~/Dropbox/Library/dotfiles/zshrc ~/.zshrc
  ln -nfs ~/Dropbox/Library/dotfiles/zshrc ~/.zshrc
  echo ln -nfs ~/Dropbox/Library/dotfiles/editrc ~/.editrc
  ln -nfs ~/Dropbox/Library/dotfiles/editrc ~/.editrc
  echo ln -nfs ~/Dropbox/Library/dotfiles/tmux.conf ~/.tmux.conf
  ln -nfs ~/Dropbox/Library/dotfiles/tmux.conf ~/.tmux.conf
  echo ln -nfs ~/Dropbox/Library/dotfiles/zsh/themes/znake.zsh-theme ~/.oh-my-zsh/themes
  ln -nfs ~/Dropbox/Library/dotfiles/zsh/themes/znake.zsh-theme ~/.oh-my-zsh/themes
else
  echo "please install oh-my-zsh"
fi

