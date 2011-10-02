# This loads RVM into the shell session
[[ -s "/Users/jin/.rvm/scripts/rvm" ]] && source "/Users/jin/.rvm/scripts/rvm"  # This loads RVM into a shell session.

autoload -U colors && colors
PS1="[%{$fg[red]%}%n%{$reset_color%}@%{$fg[yellow]%}%m %{$fg[white]%}%~] %{$reset_color%}%% "

