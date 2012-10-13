This is just my personal VIM and bash configuration.

I´m used to have my dotfiles in my DropBox since I use more than one Mac for development. This is the reason for having more then one .gvimrc files for different font sizes.

For proper symlinking and faster setup I use litte bash and ruby scripts you might find useful, check them out in my /scripts/ folder.
CHECK THEM OUT AT FIRST BEFORE USING THEM!!!

For fast symlinking for my Mac Mini I use:

    $ sh symlink_mini.sh

(NOTE: This will override all your dotfiles like .vimrc, gvimrc, zshrc, hgrc and so on)

I use Vundle for managing my plugins, so if you want to update the bundles use :BundleInstall.

If you want to use your own snippets like me which I store in my custom folder /vim/mySnippets/ and add them to Snipmate use [addsnippets.sh](https://github.com/znake/dotfiles/blob/master/vim/mySnippets/addsnippets.sh) which copys all snippets into the snipMate.vim folder.

    $ sh addsnipptes.sh

