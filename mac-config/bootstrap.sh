#!/bin/sh

printf "Mac Bootstrap\n\n"

# Get user data
printf "Enter your full name (for git config): "
read -r name
printf "Enter your email (for git and private key config): "
read -r email

# Misc Mac Configuration
# See: https://gist.github.com/dcchambers/2ddfe75de16f922065a79589edadb68f
printf "Overwriting defaults for better user experience.\n"
printf "See: https://gist.github.com/dcchambers/2ddfe75de16f922065a79589edadb68f\n"
# Keypress behavior
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
# Bluetooth fix
defaults write bluetoothaudiod "Enable AptX codec" -bool true

# Generate SSH key pair
printf "Would you like to create a new SSH key pair? [Yy]: "
read -r reply
if [ "$reply" = "y" ] || [ "$reply" = "Y" ];
then
    printf "\nGenerating a new SSH key pair at ~/.ssh/id_ed25519\n"
    ssh-keygen -t ed25519 -C "$email" -f ~/.ssh/id_ed25519 -q -N ""
    printf "Adding to SSH Agent.\n"
    eval "$(ssh-agent -s)"
    ssh-add -K ~/.ssh/id_ed25519
    pbcopy < ~/.ssh/id_ed25519.pub
    printf "SSH public key copied to keyboard.\n"
    printf "Please add the public key to your GitHub account.\n"
    printf "https://github.com/settings/keys\n\n"
    printf "Press any key to continue\n"
    read ans
fi

# Install command line tools
printf "\nInstalling xcode command line tools\n"
xcode-select --install

# Install Homebrew
printf "\nInstalling Homebrew\n"
if test ! "$(which brew)"; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
printf "\nUpdating Homebrew\n"
brew update

# Git Config
printf "Updating and configuring git\n"
brew install git
brew link --overwrite git
git config --global user.name "$name"
git config --global user.email "$email"

# Make Code Directory if it doesn't exist.
printf "Creating code directory: ~/Code\n "
mdkir ~/Code

# Dotfiles
if [ ! -d  ~/Code/dotfiles ]
then
    printf "Cloning dotfiles repo to ~/Code/dotfiles"
    git clone git@github.com:dcchambers/dotfiles.git ~/Code/dotfiles
fi
printf "Would you like to configure dotfiles? [Yy]: "
read -r reply
if [ "$reply" = "y" ] || [ "$reply" = "Y" ];
then
    printf "Configuring dotfiles"
    cd ~/Code/dotfiles && sh create-symlinks.sh 
fi

# Install Brew formula from Brewfile
printf "Would you like to install brew formula and casks? [Yy]: "
read -r reply
if [ "$reply" = "y" ] || [ "$reply" = "Y" ];
then
    cd ~/Code/dotfiles/mac-config && brew bundle install
fi

# Theming
printf "Would you like to download macos terminal themes? [Yy]: "
read -r reply
if [ "$reply" = "y" ] || [ "$reply" = "Y" ];
then
    printf "Cloning macos-terminal-themes repo (https://github.com/dcchambers/macos-terminal-themes/tree/master)\n"
    git clone git@github.com:dcchambers/macos-terminal-themes.git ~/Code/macos-terminal-themes
fi
printf "To set a default theme for terminal:
1. Choose a theme from the themes/ directory.
2. Double click it to open MacOS Terminal with that theme.
3. From the menu, select shell --> use settings as default.\n"