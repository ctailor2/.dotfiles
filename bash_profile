# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# Set postgres server data path
export PGDATA="/usr/local/pgsql/data"

# Add git branchname to end of terminal prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[36m\]\$(parse_git_branch)\[\033[00m\] $ "

alias ls="ls -F"
alias be='bundle exec'
export PATH=/usr/local/bin:$PATH
