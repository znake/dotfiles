#!/bin/bash

if [ -d ~/.vim ]; then
    if [ -d ~/.vim/bundle/snipmate.vim ]; then
        ln -nfs ~/Dropbox/Library/dotfiles/vim/mySnippets/*.snippets ~/Dropbox/Library/dotfiles/vim/bundle/snipmate.vim/snippets
        echo "Symlinked snippets successfully :)"
    else
        echo "Please install snipMate vim plugin first!"
    fi
else
    echo "Please install Vim first!"
fi

