#!/bin/bash
FROM=~/Dropbox/Library/dotfiles/vim/mySnippets/*.snippets
TO=~/Dropbox/Library/dotfiles/vim/bundle/snipmate.vim/snippets/
if [ -d ~/.vim ]; then
    if [ -d ~/.vim/bundle/snipmate.vim ]; then
        ln -nfs $FROM $TO
        echo "Symlinked snippets successfully :)"
        echo "**********************************"
        echo "Installed Snippets:"
        ls /Users/jakob/Dropbox/Library/dotfiles/vim/bundle/snipmate.vim/snippets
    else
        echo "Please install snipMate vim plugin first!"
    fi
else
    echo "Please install Vim first!"
fi

