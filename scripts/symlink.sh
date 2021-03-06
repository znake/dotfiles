#!/bin/bash
# Symlinks my bash and vim config files
if [ -d ~/.oh-my-zsh ]; then
  echo ***** symlinking START

  echo ln -nfs ~/Dropbox/Library/dotfiles/vimrc ~/.vimrc
  ln -nfs ~/Dropbox/Library/dotfiles/vimrc ~/.vimrc

  echo ln -nfs ~/Dropbox/Library/dotfiles/gvimrc ~/.gvimrc
  ln -nfs ~/Dropbox/Library/dotfiles/gvimrc ~/.gvimrc

  echo ln -nfs ~/Dropbox/Library/dotfiles/vim ~/.vim
  ln -nfs ~/Dropbox/Library/dotfiles/vim ~/.vim

  echo ln -nfs ~/Dropbox/Library/dotfiles/gitconfig ~/.gitconfig
  ln -nfs ~/Dropbox/Library/dotfiles/gitconfig ~/.gitconfig

  echo ln -nfs ~/Dropbox/Library/dotfiles/hgrc ~/.hgrc
  ln -nfs ~/Dropbox/Library/dotfiles/hgrc ~/.hgrc

  echo ln -nfs ~/Dropbox/Library/dotfiles/ackrc ~/.ackrc
  ln -nfs ~/Dropbox/Library/dotfiles/ackrc ~/.ackrc

  echo ln -nfs ~/Dropbox/Library/dotfiles/zshrc ~/.zshrc
  ln -nfs ~/Dropbox/Library/dotfiles/zshrc ~/.zshrc

  echo ln -nfs ~/Dropbox/Library/dotfiles/editrc ~/.editrc
  ln -nfs ~/Dropbox/Library/dotfiles/editrc ~/.editrc

  echo ln -nfs ~/Dropbox/Library/dotfiles/irbrc ~/.irbrc
  ln -nfs ~/Dropbox/Library/dotfiles/irbrc ~/.irbrc

  echo ln -nfs ~/Dropbox/Library/dotfiles/tmux.conf ~/.tmux.conf
  ln -nfs ~/Dropbox/Library/dotfiles/tmux.conf ~/.tmux.conf

  echo ln -nfs ~/Dropbox/Library/dotfiles/NERDTreeBookmarks ~/.NERDTreeBookmarks
  ln -nfs ~/Dropbox/Library/dotfiles/NERDTreeBookmarks ~/.NERDTreeBookmarks

  echo ln -nfs ~/Dropbox/Library/dotfiles/bash_profile ~/.bash_profile
  ln -nfs ~/Dropbox/Library/dotfiles/bash_profile ~/.bash_profile

  echo ln -nfs ~/Dropbox/Library/dotfiles/ctags ~/.ctags
  ln -nfs ~/Dropbox/Library/dotfiles/ctags ~/.ctags

  echo ln -nfs ~/Dropbox/Library/dotfiles/zsh/themes/znake.zsh-theme ~/.oh-my-zsh/themes
  ln -nfs ~/Dropbox/Library/dotfiles/zsh/themes/znake.zsh-theme ~/.oh-my-zsh/themes

  echo create backup dir for vim
  mkdir ~/Dropbox/Library/dotfiles/vim/backup

  echo ***** symlinking END
else
  echo "please install oh-my-zsh"
fi

