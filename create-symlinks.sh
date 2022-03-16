#!/bin/sh

# Use this script to automatically create symlinks to `~` for *everything* in this repo.

ln -sv $PWD/.vimrc                    ~
ln -sv $PWD/.tmux.conf                ~
ln -sv $PWD/.bash_profile             ~
ln -sv $PWD/.ticker.yaml              ~
ln -sv $PWD/.cobra.yaml               ~
ln -sv $PWD/.gitconfig-public         ~
ln -sv $PWD/.config/ranger            ~/.config
ln -sv $PWD/.config/notekeeper        ~/.config
ln -sv $PWD/.gnupg/gpg-agent.conf     ~/.gnupg
