###################
#  .bash_profile  #
###################

# Source git bash autocomplete
# Must have bash-completion@2 (since bash >v4.0) installed via Homebrew
source $(brew --prefix)/etc/bash_completion.d/git-completion.bash

# custom bash prompt
export PS1="\[\033[0;35m\]\t\[\033[0m\]\[\033[0;36m\] \w\[\033[0m\]\[\033[0;31m\] ❱❱ \[\033[0m\]"

# set up ruby env
eval "$(rbenv init -)"

##########################
# ZD Dev Environment stuff

source ~/Code/zendesk/dotfiles_n_scripts/shell_scripts/aws-login.bash
source ~/Code/zendesk/dotfiles_n_scripts/shell_Scripts/aws-exec.bash
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc

# BEGIN ZDI
export DOCKER_FOR_MAC_ENABLED=true
source ~/Code/zendesk/zdi/dockmaster/zdi.sh
# END ZDI

# End ZD Dev Stuff
###########################

###########################
# Aliases
alias c='clear'
alias g='git'
alias gd='git diff --color=always' #color=always preserves colors when piping to less
alias gds='git diff --staged --color=always | less -R'
# END Aliases
###########################

# Colors
export TERM='xterm-256color'

echo "✔ ~/.bash_profile sourced"
