# shell amenities
alias ls="ls --color=auto"
alias ll="ls -lah"
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias ping="ping -c 5"
alias diff="diff --color=auto"
alias grep="grep --color=auto"
alias ip="ip --color=auto"
alias d="dirs -v"

# git
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gs="git status"

# cosas de zsh
for index ({1..9}) alias "$index"="cd +${index}"; unset index

# vim
alias vi="nvim"
alias vim="nvim"
