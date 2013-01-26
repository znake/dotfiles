This is just my personal VIM and zsh configuration.

I'm used to have my dotfiles in my DropBox since I use more than one Mac for deveoplment.

For proper symlinking and faster setup I use the little bash script you can find in: 

[/scripts/symlink.sh](https://github.com/znake/dotfiles/blob/master/scripts/symlink.sh)

Please backup your own files, if you want to use it too. 
(NOTE: This will override all your dotfiles like .vimrc, gvimrc, zshrc, hgrc and so on)

I use [Vundle](https://github.com/gmarik/vundle) for managing my plugins, so if you want to update the bundles use 

    :BundleInstall
