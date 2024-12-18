###################
#  .bash_profile  #
###################

###########################
# START Bash Autocompletion

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
# START MISC
# Colors
export TERM='xterm-256color'

# bash prompt
export PS1="\[\033[0;35m\]\t\[\033[0m\]\[\033[0;36m\] \w\[\033[0m\]\[\033[0;31m\] ❱❱ \[\033[0m\]"

# Increase Bash History Size (Default 500)
export HISTSIZE=2000

# END MISC
###########################

###########################
# START Programming Stuff

# GOLANG
#export PATH=$PATH:$(go env GOPATH)/bin

# RUBTY
eval "$(rbenv init -)"

# RUST
#source $HOME/.cargo/env

# set up Python stuff
# Add Python 2 stuff to PATH
#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages:${PATH}"
#export PATH

# set default EDITOR
export EDITOR=/opt/homebrew/bin/nvim

# set GPG_TTY to sign git commits.
export GPG_TTY=$(tty)

# Node (NVM)
# Use recommended nvm installed instead of homebrew (https://github.com/nvm-sh/nvm#installing-and-updating)
#export NVM_DIR="$HOME/.nvm"
#[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
#[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# END Programming
###########################

###########################
# Brew Stuff

# Brew installs some stuff to /usr/local/sbin. Add to path.
export PATH="/usr/local/sbin:$PATH"

# Other common bin install locatio
export PATH="~/.local/bin:$PATH"
###########################

###########################
# Postgres
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
###########################

###########################
# Aliases
source ~/.bash_aliases
###########################

###########################
# bashrc
# MacOS uses .bash_profile for all login and interactive shells, so it's easiest to just
# source .bashrc as some programs expect configuration in .bashrc instead of bash_profile.
source ~/.bashrc
###########################

###########################
# Start Greeting

printf "✔ .bash_profile loaded\n\n"

# Get the current hour in 24-hour format
hour=$(date +"%H")

# Define time ranges
morning_start=4    # 4 AM
afternoon_start=12 # 12 PM
evening_start=17   # 5 PM

# Check the time of day and print a message
if [ "$hour" -ge "$morning_start" ] && [ "$hour" -lt "$afternoon_start" ]; then
    greeting="Good morning"
elif [ "$hour" -ge "$afternoon_start" ] && [ "$hour" -lt "$evening_start" ]; then
    greeting="Good afternoon"
else
    greeting="Good evening"
fi

printf "$greeting, Dakota\n\n"

# END Greeting
###########################
