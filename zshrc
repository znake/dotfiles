# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="znake"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# create new folder and cd into it
function take() {
  mkdir -p "$1"
  cd "$1"
}

# use VI mode instead of emacs in terminal
bindkey -v

# Finder
alias o='open .'

# VIM
alias m='mvim .'
alias mm='mvim'

alias titanium.py="~/Library/Application\ Support/Titanium/mobilesdk/osx/2.1.3.GA/titanium.py"
alias so="source ~/.zshrc"

# install NPM packages in the home directory $HOME/bin. $HOME/bin must be in your PATH
export NPM_CONFIG_PREFIX=$HOME

export PATH="/usr/local/bin:/usr/bin:$HOME/android-sdks/tools:$HOME/android-sdks/platform-tools:$HOME/Dropbox/Library/dotfiles/vim/bin:$HOME./rvm/bin:/usr/local/bin/npm:/usr/local/share/npm/bin:$HOME/bin:$HOME/bin.:$PATH"
# no need for :$HOME/android-sdks/platforms

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# https://rvm.io/integration/zsh/
__rvm_project_rvmrc

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
