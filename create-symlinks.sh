#!/bin/sh

# Use this script to automatically create symlinks to `~` for *everything* in this repo.

mkdir -p ~/.config
mkdir -p ~/.config/gh
mkdir -p ~/.config/notekeeper
mkdir -p ~/.gnupg
mkdir -p ~/Library/Application\ Support/Code/User
mkdir -p ~/.newsboat

ln -sv $PWD/.vimrc                    ~
ln -sv $PWD/.tmux.conf                ~
ln -sv $PWD/.bash_profile             ~
ln -sv $PWD/.bashrc                   ~
ln -sv $PWD/.ticker.yaml              ~
ln -sv $PWD/.cobra.yaml               ~
ln -sv $PWD/.gitconfig-public         ~
ln -sv $PWD/.config/gh/config.yml     ~/.config/gh/config.yml
ln -sv $PWD/.config/notekeeper/noterc ~/.config/notekeeper/noterc
ln -sv $PWD/.gnupg/gpg-agent.conf     ~/.gnupg/gpg-agent.conf
ln -sv $PWD/vscode/settings.json      ~/Library/Application\ Support/Code/User/settings.json
ln -sv $PWD/.newsboat/urls            ~/.newsboat/urls
