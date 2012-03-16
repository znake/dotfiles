# configure command-t for vim
if [ -d ~/.vim ]; then 
  echo config command-t
  cd ~/Dropbox/Library/dotfiles/vim/bundle/command-t
  rake make
  cd ~/Dropbox/Library/dotfiles/vim/bundle/command-t/ruby/command-t/
  ruby extconf.rb
  make
else 
  echo "please install and symlink vim first"
fi
