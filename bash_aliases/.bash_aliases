# Some extra aliases/functions I found useful
csv() { cat $1 | column -t -s, | less -S; }
bu() { cp $@ $@.backup-'date +%y%m%d'; }

alias c='clear'
alias ls='ls --color=auto'
alias sl='ls --color=auto'
alias ll='ls -la'
alias l.='ls -d .* --color=auto'
alias lt='ls -alrt'
alias r='fc -e -'
alias cd..='cd ..'
alias dc='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias grep='grep --color=auto'
alias mkdir='mkdir -pv'
alias diff='colordiff'
alias mount='mount |column -t'
alias wget='wget -c'
alias cpProgress='rsync --progress -ravz'

alias exp='cd /data/shared/discovery/skynet/experiments/s2s'
alias skynet='cd /data/jchledowski/skynet'
