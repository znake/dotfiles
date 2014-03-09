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

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

# If on master: gbin branch1 <-- this will show you what's in branch1 and not in master
function gbin { 
    echo branch \($1\) has these commits and \($(parse_git_branch)\) does not 
    git log ..$1 --no-merges --format='%h | Author:%an | Date:%ad | %s' --date=local
}

# If on master: gbout branch1 <-- this will show you what's in master that's not in branch1
function gbout { 
    echo branch \($(parse_git_branch)\) has these commits and \($1\) does not 
    git log $1.. --no-merges --format='%h | Author:%an | Date:%ad | %s' --date=local
}

# use VI mode instead of emacs in terminal
bindkey -v

# Finder
alias o='open .'

# VIM
alias m='mvim .'
alias mm='mvim'

# open chrome with web secuity disabled
alias xsschrome='open /Applications/Google\ Chrome.app --args --disable-web-security'

# apple scripts
alias setuprun='osascript ~/Dropbox/Sonst/setuprun.scpt'
alias setupall='osascript ~/Dropbox/Sonst/setupall.scpt'
alias setupsmall='osascript ~/Dropbox/Sonst/setupsmall.scpt'

# rake
alias rake='noglob rake'

#alias titanium.py="~/Library/Application\ Support/Titanium/mobilesdk/osx/2.1.3.GA/titanium.py"

alias tide="~/Library/Application\ Support/TideSDK/sdk/osx/1.3.1-beta/tidebuilder.py"

alias so="source ~/.zshrc"

bindkey \\C-R history-incremental-search-backward

# install NPM packages in the home directory $HOME/bin. $HOME/bin must be in your PATH
export NPM_CONFIG_PREFIX=$HOME

export PATH="$HOME/bin/Sencha/Cmd/4.0.2.67:/usr/local/bin:/usr/bin:$HOME/android-sdks/tools:$HOME/android-sdks/platform-tools:$HOME/Dropbox/Library/dotfiles/vim/bin:$HOME./rvm/bin:/usr/local/bin/npm:/usr/local/share/npm/bin:$HOME/bin:$HOME/bin.:$PATH"
# no need for :$HOME/android-sdks/platforms

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# https://rvm.io/integration/zsh/
__rvm_project_rvmrc

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
