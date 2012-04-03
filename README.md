This is just my personal VIM and bash configuration, pretty much stolen from [Janus: Carlhuda's vim Distribution](https://github.com/carlhuda/janus) and [PeepCode](http://peepcode.com/products/smash-into-vim-ii) and other dofiles including some more plugins like [VIM-LaTeX](http://vim-latex.sourceforge.net/) already configured, my adoped Railscast Theme, my own Snippets for [Snipmate](http://www.vim.org/scripts/script.php?script_id=2540) and so on.

I´m used to have my dotfiles in my DropBox since I use more then one Mac for development.

For proper symlinking and faster setup I use litte bash and ruby scripts you might find useful, check them out in my /scripts/ folder.
CHECK THEM OUT AT FIRST BEFORE USING THEM!!!

Fast symlinking:
Just run 

    $ sh symlink_mini.sh 

for quick setup. I use 2 different screen sizes so I use von gvimrc for my Mac Mini and the other for my Mac Book Air, that’s why there two!
(NOTE: This will override all your dotfiles like .vimrc, gvimrc, zshrc, hgrc and so on)

For fast CommandT configuration I use /scripts/configure_command_t.sh	
 (NOTE: If you use RVM change to your system ruby "$ rvm system" before running this command).

If you want to update your bundles use [update_bundles.rb](https://github.com/znake/dotfiles/blob/master/vim/update_bundles.rb) (NOTE: This will delete all your installed plugins from your bundle folder and redownload it)

    ruby update_bundles.rb

If you want to use your own snippets like me which I store in my custom folder /vim/mySnippets/ and add them to Snipmate use [addsnippets.sh](https://github.com/znake/dotfiles/blob/master/vim/mySnippets/addsnippets.sh) which copys all snippets into the snipMate.vim folder.

    sh addsnipptes.sh

