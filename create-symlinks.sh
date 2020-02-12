#!/bin/sh

# Use this script to automatically create symlinks to `~` for *everything* in this repo.

ln -sv $PWD/.vimrc ~
ln -sv $PWD/.tmux.conf ~
ln -sv $PWD/.bash_profile ~
