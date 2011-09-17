This is just my personal VIM and bash configuration, pretty much stolen from [Janus: Carlhuda's vim Distribution](https://github.com/carlhuda/janus) and [PeepCode](http://peepcode.com/products/smash-into-vim-ii) including some more plugins like [VIM-LaTeX](http://vim-latex.sourceforge.net/) already configured, my adoped Railscast Theme, my own Snippets for [Snipmate](http://www.vim.org/scripts/script.php?script_id=2540) and so on.

Clone it in your ~/bin folder, to make it work! (If you don´t have one just create it)

For proper symlinking and Command-t configuration you can run [symlink.sh](https://github.com/znake/dotfiles/blob/master/symlink.sh) (NOTE: If you use RVM change to your system ruby "$ rvm system" before running this command)

    sh symlink.sh

Which will do all the necessary symlinking actions, backup your own config file before running this script!!!
Such as .bashrc, .bash_profile, .vimrc, .gvimrc and .vim

If you want to update your bundles use [update_bundles.rb](https://github.com/znake/dotfiles/blob/master/vim/update_bundles.rb) (NOTE: This will delete all your installed plugins from your bundle folder and redownload it)

    ruby update_bundles.rb

If you want to use your own snippets like me use [addsnippets.sh](https://github.com/znake/dotfiles/blob/master/vim/mySnippets/addsnippets.sh) which copys all snippets from /mySnippets/ into the snipMate.vim folder.

    sh addsnipptes.sh

