# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

# Color Variables
NORMAL="\[\e[0m\]"   # NORMAL RESET
RED="\[\e[31m\]"     # RED
GREEN="\[\e[32m\]"   # GREEN
YELLOW="\[\e[33m\]"  # YELLOW
BLUE="\[\e[34m\]"    # BLUE
MAGENTA="\[\e[35m\]" # MAGENTA
CYAN="\[\e[36m\]"    # CYAN
WHITE="\[\e[37m\]"   # WHITE

# Prompt Variables
USERNAME="\u"
HOSTNAME="\h"
DIRECTORY="\w"
PWDROOT="\W"

# Add git branchname to end of terminal prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Format the prompt
export PS1="$USERNAME: $YELLOW$DIRECTORY$CYAN\$(parse_git_branch)$NORMAL $ "

# Aliases
alias ls="ls -F"
alias gs="git status"
alias c="clear"
alias hist="history"

export PATH=/usr/local/bin:$PATH

# Use VI mode for command line editing
set -o vi

# Java Homes
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)

alias java8='export JAVA_HOME=$JAVA_8_HOME'

# default Java version
java8
