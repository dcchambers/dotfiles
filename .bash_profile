###################
#  .bash_profile  #
###################

###########################
# Bash Autocompletion

# Homebrew
eval $(/opt/homebrew/bin/brew shellenv)

BREW_PREFIX="/opt/homebrew"
if type brew &>/dev/null; then
  if [[ -r "${BREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${BREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${BREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
fi

# Source git bash autocomplete. For some reason the above doesn't work properly.
# Must have bash-completion@2 (since bash >v4.0) installed via Homebrew
source ${BREW_PREFIX}/etc/bash_completion.d/git-completion.bash

# END Bash Autocompletion
###########################

###########################
# MISC Stuff
# Colors
export TERM='xterm-256color'

# custom bash prompt
export PS1="\[\033[0;35m\]\t\[\033[0m\]\[\033[0;36m\] \w\[\033[0m\]\[\033[0;31m\] ❱❱ \[\033[0m\]"

# Increase Bash History Size (Default 500)
export HISTSIZE=2000

# END MISC
###########################

###########################
# Programming Stuff
# Add GOPATH/bin directory to system PATH.
export PATH=$PATH:$(go env GOPATH)/bin

# set up ruby env
eval "$(rbenv init -)"

# set up Rust stuff
source $HOME/.cargo/env

# set up Python stuff
# Add Python 2 stuff to PATH
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages:${PATH}"
export PATH

# set default EDITOR
export EDITOR=/usr/local/bin/vim

# set GPG_TTY to sign git commits.
export GPG_TTY=$(tty)

# Node (NVM)
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# END Programming
###########################

###########################
# Brew Stuff

# Brew installs some stuff to /usr/local/sbin. Add to path.
export PATH="/usr/local/sbin:$PATH"
###########################

###########################
# Postgres 
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
###########################

###########################
# Aliases
alias be='bundle exec'
alias c='clear'
alias cim='vim' # I typo this a lot...
alias g='git'
alias gd='git diff --color=always' #color=always preserves colors when piping to less
alias gds='git diff --staged --color=always | less -R'
alias gcl='git config --list'
alias gcm='git commit -m'
# MacOS Python Fix (Python 3 installed with Brew. Python 2 default included in MacOS.)
alias pip='/usr/local/bin/pip3'
alias python='/usr/local/bin/python3' #Make python 3.x default.
alias wid='vim /Users/dchambers/Code/zendesk/work-notes/misc/whatidid.md' # dead simple work tracking for non-jira stuff
# END Aliases
###########################

###########################
# Work Stuff
# Load Work Config
if [ $(hostname) = "QCM262HV7N" ]; then
    if [ -f ~/.bash_profile.zendesk ]; then
        source ~/.bash_profile.zendesk
        echo "✔ Zendesk configuration loaded"
    else
        echo "✗ Unable to load Zendesk configuration"
    fi
fi
# END Work Stuff
###########################

echo "✔ .bash_profile loaded"
