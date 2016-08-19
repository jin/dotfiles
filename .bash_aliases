# tmux
alias t='tmux attach-session -t default || tmux new-session -s default'
alias ta='tmux attach -t'
alias tn='tmux new -s'
alias tl='tmux list-sessions'
alias ts='tmux display-message -p "#S"'

# Reload bash configuration
alias r='source ~/.bashrc && echo "Reloaded bash configuration!"'

# vim
alias v='vim'
