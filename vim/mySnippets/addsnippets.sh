#!/bin/bash

if [ -d ~/.vim ]; then
    if [ -d ~/.vim/bundle/snipmate.vim ]; then
        cp ~/bin/dotfiles/vim/mySnippets/*.snippets ~/bin/dotfiles/vim/bundle/snipmate.vim/snippets
        echo "Installed snippets successfully :)"
    else
        echo "Please install snipMate vim plugin first!"
    fi
else
    echo "Please install Vim first!"
fi

