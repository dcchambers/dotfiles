#!/bin/sh

# Use this script to automatically create symlinks to `~` for *everything* in this repo.

mkdir -p ~/.config
mkdir -p ~/.gnupg

ln -sv $PWD/.vimrc                    ~
ln -sv $PWD/.tmux.conf                ~
ln -sv $PWD/.bash_profile             ~
ln -sv $PWD/.ticker.yaml              ~
ln -sv $PWD/.cobra.yaml               ~
ln -sv $PWD/.gitconfig-public         ~
ln -sv $PWD/.config/ranger            ~/.config/ranger
ln -sv $PWD/.config/notekeeper        ~/.config/notekeeper
ln -sv $PWD/.gnupg/gpg-agent.conf     ~/.gnupg/gpg-agent.conf
