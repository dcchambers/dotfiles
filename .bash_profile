###################
#  .bash_profile  #
###################

# Git bash autocomplete
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion || {
    # if not found in /usr/local/etc, try the brew --prefix location
    [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ] && \
        . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
}

# custom bash prompt
export PS1="\[\033[0;35m\]\t\[\033[0m\]\[\033[0;36m\] \w\[\033[0m\]\[\033[0;31m\] ❱❱ \[\033[0m\]"

# set up ruby env
eval "$(rbenv init -)"

##########################
# ZD Dev Environment stuff

source ~/dev/dotfiles_n_scripts/shell_scripts/aws-login.bash
source ~/dev/dotfiles_n_scripts/shell_Scripts/aws-exec.bash
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc

# BEGIN ZDI
export DOCKER_FOR_MAC_ENABLED=true
source /Users/dchambers/Code/zendesk/zdi/dockmaster/zdi.sh
# END ZDI

# End ZD Dev Stuff
###########################

echo "✔ ~/.bash_profile sourced"