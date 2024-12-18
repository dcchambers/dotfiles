#!/bin/sh

# Use this script to automatically create symlinks to the user home directory.

DOTFILE_DIR=$HOME/Code/dotfiles

mkdir -p ~/.config
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/alacritty/themes
mkdir -p ~/.config/gh
mkdir -p ~/.config/notekeeper
mkdir -p ~/.config/nvim
mkdir -p ~/.config/nvim/lua
mkdir -p ~/.config/nvim/lua/config
mkdir -p ~/.config/nvim/lua/plugins
mkdir -p ~/.config/zed
mkdir -p ~/.gnupg
mkdir -p ~/.newsboat
mkdir -p ~/Library/Application\ Support/Code/User

ln -sv $DOTFILE_DIR/.bash_aliases                                 ~/.bash_aliases
ln -sv $DOTFILE_DIR/.bash_profile                                 ~/.bash_profile
ln -sv $DOTFILE_DIR/.bashrc                                       ~/.bashrc
ln -sv $DOTFILE_DIR/.cobra.yaml                                   ~/.cobra.yaml
ln -sv $DOTFILE_DIR/.config/alacritty/alacritty.toml              ~/.config/alacritty/alacritty.toml
ln -sv $DOTFILE_DIR/.config/alacritty/themes/monokai_pro.toml     ~/.config/alacritty/themes/monokai_pro.toml
ln -sv $DOTFILE_DIR/.config/alacritty/themes/solarized_light.toml ~/.config/alacritty/themes/solarized_light.toml
ln -sv $DOTFILE_DIR/.config/gh/config.yml                         ~/.config/gh/config.yml
ln -sv $DOTFILE_DIR/.config/lazyvim/init.lua                      ~/.config/nvim/init.lua
ln -sv $DOTFILE_DIR/.config/lazyvim/lua/config/autocmds.lua       ~/.config/nvim/lua/config/autocmds.lua
ln -sv $DOTFILE_DIR/.config/lazyvim/lua/config/keymaps.lua        ~/.config/nvim/lua/config/keymaps.lua
ln -sv $DOTFILE_DIR/.config/lazyvim/lua/config/lazy.lua           ~/.config/nvim/lua/config/lazy.lua
ln -sv $DOTFILE_DIR/.config/lazyvim/lua/config/options.lua        ~/.config/nvim/lua/config/options.lua
ln -sv $DOTFILE_DIR/.config/lazyvim/lua/plugins/example.lua       ~/.config/nvim/lua/plugins/example.lua
ln -sv $DOTFILE_DIR/.config/lazyvim/stylua.toml                   ~/.config/nvim/stylua.toml
ln -sv $DOTFILE_DIR/.config/notekeeper/noterc                     ~/.config/notekeeper/noterc
ln -sv $DOTFILE_DIR/.config/zed/settings.json                     ~/.config/zed/settings.json
ln -sv $DOTFILE_DIR/.gitconfig-public                             ~/.gitconfig-public
ln -sv $DOTFILE_DIR/.gnupg/gpg-agent.conf                         ~/.gnupg/gpg-agent.conf
ln -sv $DOTFILE_DIR/.newsboat/urls                                ~/.newsboat/urls
ln -sv $DOTFILE_DIR/.ticker.yaml                                  ~/.ticker.yaml
ln -sv $DOTFILE_DIR/.tmux.conf                                    ~/.tmux.conf
ln -sv $DOTFILE_DIR/.vimrc                                        ~/.vimrc
ln -sv $DOTFILE_DIR/vscode/settings.json                          ~/Library/Application\ Support/Code/User/settings.json
