# CCZE Colourize for Oh My Zsh
# Author: Tercio Gaudencio Filho - https://gist.github.com/0x3333

CCZE="$(command -v ccze)"

function colourize {
  eval "$@ | $CCZE -A"
}

function create_alias {
  CMD="$(command -v $1)"
  if [ "force" = "$2" ]; then
    CMD="$1"
  fi
  if [ -n "$CMD" ]; then
    alias $1="colourize $CMD"
  fi
}

if [ -n "$CCZE" ]; then
  alias colourize=colourize

  create_alias cat
  create_alias configure force
  create_alias diff
  create_alias g++
  create_alias gcc
  create_alias ld
  create_alias make
  create_alias netstat
  create_alias ping
  create_alias tail
  create_alias traceroute
  create_alias awslogs
fi