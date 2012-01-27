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

# Finder
alias o='open .'

# VIM
alias m='mvim .'
alias mm='mvim'


# Customize to your needs...
export PATH=/Users/jakoblehner/.rvm/gems/ruby-1.9.2-p290@rails3.1/bin:/Users/jakoblehner/.rvm/gems/ruby-1.9.2-p290@global/bin:/Users/jakoblehner/.rvm/rubies/ruby-1.9.2-p290/bin:/Users/jakoblehner/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/texbin:/Users/jakoblehner/bin:/Users/jakoblehner/bin/android-sdk/tools:/Users/jakoblehner/bin/android-sdk/platform-tools:/usr/local/zend/bin:/usr/local/zend/mysql/bin