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
defaults write bluetoothaudiod "Enable AptX codec" -bool true # BT Audio fix
defaults write -g NSWindowShouldDragOnGesture YES # better window click-and-drag

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
printf "Would you like to install xcode command line tools? [Yy]: "
read -r reply
if [ "$reply" = "y" ] || [ "$reply" = "Y" ];
then
    printf "\nInstalling xcode command line tools\n"
    xcode-select --install
    # This normally won't pause the script. Add a resume confirmation below.
    printf "\nPress enter to continue.\n"
    read ans
fi

# Install Homebrew
printf "Would you like to install Homebrew? [Yy]: "
read -r reply
if [ "$reply" = "y" ] || [ "$reply" = "Y" ];
then
    printf "\nInstalling Homebrew\n"
    if test ! "$(which brew)"; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    # Configure brew to work correctly with zsh
    echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/$USER/.zprofile
    eval $(/opt/homebrew/bin/brew shellenv)
    printf "\nUpdating Homebrew\n"
    brew update
fi

# Git Config
printf "Would you like to install and configure git? [Yy]: "
read -r reply
if [ "$reply" = "y" ] || [ "$reply" = "Y" ];
then
    printf "\nUpdating and configuring git\n"
    brew install git
    brew link --overwrite git
    git config --global user.name "$name"
    git config --global user.email "$email"
fi

# Make Code Directory if it doesn't exist.
printf "Creating code directory: ~/Code\n "
mdkir ~/Code

# Dotfiles
if [ ! -d  ~/Code/dotfiles ]
then
    printf "\nCloning dotfiles repo to ~/Code/dotfiles"
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
printf "Would you like to install homebrew formula and casks? (THIS MIGHT TAKE A WHILE) [Yy]: "
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

# Programming Languages

# rust
printf "Would you like to install Rust? [Yy]: "
read -r reply
if [ "$reply" = "y" ] || [ "$reply" = "Y" ];
then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

# TODO

# Ruby Setup

# Go Setup


