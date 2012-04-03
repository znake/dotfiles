#!/bin/bash
CURRENT_DIR="$( cd "$( dirname "$0" )" && pwd )"
FROM=$CURRENT_DIR/../vim/mySnippets/*.snippets
TO=$CURRENT_DIR/../vim/bundle/snipmate.vim/snippets
if [ -d ~/.vim ]; then
    if [ -d ~/.vim/bundle/snipmate.vim ]; then
        ln -nfs $FROM $TO
        echo "Symlinked snippets successfully :)"
    else
        echo "Please install snipMate vim plugin first!"
    fi
else
    echo "Please install Vim first!"
fi

