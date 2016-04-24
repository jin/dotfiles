# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="norm"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(brew git autojump osx)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/Users/jin/.rvm/bin:/Library/Frameworks/Mono.framework/Commands"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias hello='nc -z' # Check if port on domain is open
alias safari='open -a Safari' # open with Safari
alias z='source ~/.zshrc'

alias start-ftp-server='twistd -n ftp --root ./'
alias start-http-server='twistd -n web -p 8000 --path .'

alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vim/vimrc"

alias highlight-clipboard="pbpaste | highlight --syntax=rb -O rtf | pbcopy"

alias update-brew="brew update --verbose && brew upgrade --verbose && brew doctor --verbose"

alias send-to-kindle="mv ~/Dropbox/Papers/to\ convert/*_k2opt.pdf /Volumes/Kindle/documents/Papers/ && mv ~/Dropbox/Papers/to\ convert/*.pdf ~/Dropbox/Papers/converted/"

alias motion="/Library/RubyMotion/bin/motion"
alias sudo='sudo '

alias ta='tmux attach -t'
alias tn='tmux new -s'
alias tl='tmux list-sessions'

# For Homebrew $brew doctor
for dir in \
      /usr/local/bin \
          /usr/bin
; do
  if [[ -d $dir ]]; then path+=$dir; fi
done

# for neovim
export VIMRUNTIME=/usr/local/Cellar/vim/7.4.273/share/vim/vim74/

# ensure that IntelliJ runs properly
export IDEA_JDK='/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home'

# Default text editor
export EDITOR='vim'

# Docker stuff
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/jin/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

eval `/usr/libexec/path_helper -s`

# For autojump
# [[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
alias fucking='sudo'
alias javac-3230='javac -nowarn -Xlint:-deprecation'
alias gendocs-mahjong='jazzy --min-acl private --github_url http://github.com/MahjongLeh/ -c -o docs --docset-icon assets/applogo.png'

alias v='vim'

alias ocaml='ledit ocaml'

# Fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export GOPATH=/Users/jin/Code/go

# OPAM configuration
. /Users/jin/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

alias ip="ipconfig getifaddr $(route -n get default|awk '/interface/ { print $2 }')
"
alias be="bundle exec"

export NVM_DIR="/Users/jin/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export VIMRUNTIME="/usr/local/Cellar/vim/7.4.1301/share/vim/vim74/"

alias init-latex-homework='git clone git@github.com:jin/latex-homework-template'

fortune | cowsay | cowsay -n | cowsay -n | lolcat
