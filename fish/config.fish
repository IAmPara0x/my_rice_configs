
set PATH $PATH /home/paradox/.gem/ruby/2.7.0/bin
set PATH $PATH /home/paradox/.local/bin

set TERM xterm-256color
set -x BAT_THEME Nord
set -x SPCLI "LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify"

alias ls='colorls -lA --sd'

starship init fish | source
