#!/bin/bash
# Symlinks your bash and vim config files
if [ -d ~/.rvm ]; then 
  ps1_set --prompt $ 
else 
  echo "please install rvm -> https://rvm.beginrescueend.com/rvm/install/"
fi
echo symlinking
echo ln -nfs ~/bin/dotfiles/bashrc ~/.bashrc
ln -nfs ~/bin/dotfiles/bashrc ~/.bashrc
echo ln -nfs ~/bin/dotfiles/bash_profile ~/.bash_profile
ln -nfs ~/bin/dotfiles/bash_profile ~/.bash_profile
echo ln -nfs ~/bin/dotfiles/vimrc ~/.vimrc
ln -nfs ~/bin/dotfiles/vimrc ~/.vimrc
echo ln -nfs ~/bin/dotfiles/gvimrc ~/.gvimrc
ln -nfs ~/bin/dotfiles/gvimrc ~/.gvimrc
echo ln -nfs ~/bin/dotfiles/vim ~/.vim
ln -nfs ~/bin/dotfiles/vim ~/.vim
echo ln -nfs ~/bin/dotfiles/hgrc ~/.hgrc
ln -nfs ~/bin/dotfiles/hgrc ~/.hgrc
echo ln -nfs ~/bin/dotfiles/zshrc ~/.zshrc
ln -nfs ~/bin/dotfiles/zshrc ~/.zshrc
echo *************************************************
echo config command-t
cd ~/bin/dotfiles/vim/bundle/command-t
rake make
cd ~/bin/dotfiles/vim/bundle/command-t/ruby/command-t/
ruby extconf.rb
make

