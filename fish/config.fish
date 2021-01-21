

set PATH $PATH /home/paradox/.gem/ruby/2.7.0/bin
set PATH $PATH /home/paradox/.local/bin


set -x BAT_THEME Dracula
set -x SPCLI "LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify"

alias ls='colorls -lA --sd'
alias tmux='tmux -u'

starship init fish | source

