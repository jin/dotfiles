# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="norm"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# zsh plugins
plugins=(brew git autojump osx pass)

source $ZSH/oh-my-zsh.sh

######## User configuration

export PATH="$HOME/.local/bin:$HOME/.cabal/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# Default text editor
export EDITOR='nvim'

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# ensure that IntelliJ runs properly
export IDEA_JDK='/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home'

# Fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Go
export GOPATH=/Users/jin/Code/go

# OPAM configuration
. /Users/jin/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Load NVM
export NVM_DIR="/Users/jin/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

alias start-ftp-server='twistd -n ftp --root ./'
alias start-http-server='twistd -n web -p 8000 --path .'

alias z='source ~/.zshrc'
alias zshrc="nvim ~/.zshrc"
alias vimrc="nvim ~/.vim/vimrc"
alias nvimrc="nvim ~/.config/nvim/init.vim"
alias v='nvim'
alias vim='nvim'

alias t='tmux attach-session -t default || tmux new-session -s default'
alias ta='tmux attach -t'
alias tn='tmux new -s'
alias tl='tmux list-sessions'
alias ts='tmux display-message -p "#S"'

alias highlight-clipboard="pbpaste | highlight --syntax=rb -O rtf | pbcopy"
alias update-brew="brew update --verbose && brew upgrade --verbose && brew doctor --verbose"
alias ocaml='ledit ocaml'

eval `/usr/libexec/path_helper -s`

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
