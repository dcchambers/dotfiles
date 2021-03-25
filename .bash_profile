###################
#  .bash_profile  #
###################

# Source git bash autocomplete
# Must have bash-completion@2 (since bash >v4.0) installed via Homebrew
source $(brew --prefix)/etc/bash_completion.d/git-completion.bash

# Fix goto
source $(brew --prefix)/etc/bash_completion.d/goto.sh


# custom bash prompt
export PS1="\[\033[0;35m\]\t\[\033[0m\]\[\033[0;36m\] \w\[\033[0m\]\[\033[0;31m\] ❱❱ \[\033[0m\]"

# Add GOPATH/bin directory to system PATH.
export PATH=$PATH:$(go env GOPATH)/bin

# set up ruby env
eval "$(rbenv init -)"

# Load Work Config
if [ $(hostname) = "24683" ]; then
    source ~/zendesk.bash_profile
    echo "✔ Zendesk configuration loaded"
else
    echo "✗ Unable to load Zendesk configuration"
fi

###########################
# Aliases
alias be='bundle exec'
alias c='clear'
alias g='git'
alias gd='git diff --color=always' #color=always preserves colors when piping to less
alias gds='git diff --staged --color=always | less -R'

# MacOS Python Fix (Python 3 installed with Brew. Python 2 default included in MacOS.)
alias python='/usr/local/bin/python3' #Make python 3.x default.
alias pip='/usr/local/bin/pip3'

# END Aliases
###########################

# Colors
export TERM='xterm-256color'

echo "✔ .bash_profile loaded"
