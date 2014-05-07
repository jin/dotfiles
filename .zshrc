# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"
#ZSH_THEME="random"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(zsh-syntax-highlighting git osx ruby battery brew cp)
source $ZSH/oh-my-zsh.sh

# for Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin

# For Homebrew $brew doctor
for dir in \
      /usr/local/bin \
          /usr/bin
; do
  if [[ -d $dir ]]; then path+=$dir; fi
done

# growl() { echo -e $']9;''' ; return ; }

# Aliases
alias hello='nc -z' # Check if port on domain is open
alias safari='open -a Safari' # open with Safari
alias z='source ~/.zshrc && echo ".zshrc reloaded!"'
alias vim='/usr/local/bin/vim'
alias vi='/usr/local/bin/vim'

alias start-ftp-server='twistd -n ftp --root ./'
alias start-http-server='twistd -n web -p 8000 --path .'

alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vim/vimrc"

alias update-brew="brew update --verbose && brew upgrade --verbose && brew doctor --verbose"

set -o vi

# for rvm
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# for neovim
export VIMRUNTIME=/usr/local/Cellar/vim/7.4.273/share/vim/vim74/
