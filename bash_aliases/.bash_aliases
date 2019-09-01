# aliases
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
alias grep='grep --color=auto'
alias mkdir='mkdir -pv'
alias diff='colordiff'
alias mount='mount |column -t'
alias wget='wget -c'
alias cpProgress='rsync --progress -ravz'

bu() { cp $@ $@.backup-'date +%y%m%d'; }
