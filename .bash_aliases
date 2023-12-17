alias dcom="docker compose"
alias dcomb="docker compose build"
alias dcomr="docker compose restart"
alias dcomd="docker compose down"
alias dcomu="docker compose up"
alias dcomud="docker compose up -d"

alias ls='ls -alF --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias mkdir="mkdir -pv"

cheat() {
  curl http://cheat.sh/$1
}
