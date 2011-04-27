This is just my personal VIM and bash configuration, pretty much stolen from [Janus: Carlhuda's vim Distribution](https://github.com/carlhuda/janus) and [PeepCode](http://peepcode.com/products/smash-into-vim-ii) including some more plugins like [VIM-LaTeX](http://vim-latex.sourceforge.net/) already configured, my adoped Railscast Theme, my own Snippets for [Snipmate](http://www.vim.org/scripts/script.php?script_id=2540) and so on.

For proper symlinking and Command-t configuration you can run [symlink.sh](https://github.com/znake/dotfiles/blob/master/symlink.sh) (if you use RVM change to your to your system ruby "$ rvm system" before running this command)

    sh symlink.sh

Which will do all the necessary symlinking actions, backup your own config file before running this script!!!
Such as .bashrc, .bash_profile, .vimrc, .gvimrc and .vim

If you want to update your bundles use [update_bundles.rb](https://github.com/znake/dotfiles/blob/master/vim/update_bundles.rb).

