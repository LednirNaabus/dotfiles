#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
# Defaults
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Fastfetch
alias neofetch='fastfetch -c examples/13'

# Git prompt
source /usr/share/git/completion/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUPSTREAM="auto"

DEFAULT_COLOR='\[\033[0;39m\]'
BLACK='\[\033[0;30m\]'
RED='\[\033[0;31m\]'
GREEN='\[\033[0;32m\]'
YELLOW='\[\033[0;33m\]'
BLUE='\[\033[0;34m\]'
MAGENTA='\[\033[0;35m\]'
CYAN='\[\033[0;36m\]'
DARK_GRAY='\[\033[0;90m\]'
RESET='\[\033[0m\]'

# Prompt
PS1="${DEFAULT_COLOR}[\t] ${GREEN}\w${YELLOW}\$(__git_ps1 ' (%s)') ${RESET}\$ "
