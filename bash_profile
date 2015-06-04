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
alias be="bundle exec"
alias gs="git status"
alias c="clear"

export PATH=/usr/local/bin:$PATH

# Use VI mode for command line editing
set -o vi

# Set bundler editor for bundle opening gems
export BUNDLER_EDITOR='mvim -f'

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

