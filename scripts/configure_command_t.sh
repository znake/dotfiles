# configure command-t for vim
CURRENT_DIR="$( cd "$( dirname "$0" )" && pwd )"
if [ -d ~/.vim ]; then 
  echo config command-t
  cd $CURRENT_DIR/../vim/bundle/command-t
  rake make
  cd $CURRENT_DIR/../vim/bundle/command-t/ruby/command-t/
  ruby extconf.rb
  make
else 
  echo "please install and symlink vim first"
fi
