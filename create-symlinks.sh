#!/bin/sh

# Use this script to automatically create symlinks to `~` for *everything* in this repo.
#

DOTFILE_DIR=/Users/$(whoami)/Code/dotfiles

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
mkdir -p ~/Library/Application\ Support/Code/User
mkdir -p ~/.newsboat

ln -sv $DOTFILE_DIR/.vimrc                                        ~
ln -sv $DOTFILE_DIR/.tmux.conf                                    ~
ln -sv $DOTFILE_DIR/.bash_profile                                 ~
ln -sv $DOTFILE_DIR/.bashrc                                       ~
ln -sv $DOTFILE_DIR/.ticker.yaml                                  ~
ln -sv $DOTFILE_DIR/.cobra.yaml                                   ~
ln -sv $DOTFILE_DIR/.gitconfig-public                             ~
ln -sv $DOTFILE_DIR/.config/alacritty/alacritty.toml              ~/.config/alacritty/alacritty.toml
ln -sv $DOTFILE_DIR/.config/alacritty/themes/monokai_pro.toml     ~/.config/alacritty/themes/monokai_pro.toml
ln -sv $DOTFILE_DIR/.config/alacritty/themes/solarized_light.toml ~/.config/alacritty/themes/solarized_light.toml
ln -sv $DOTFILE_DIR/.config/gh/config.yml                         ~/.config/gh/config.yml
ln -sv $DOTFILE_DIR/.config/notekeeper/noterc                     ~/.config/notekeeper/noterc
ln -sv $DOTFILE_DIR/.config/zed/settings.json                     ~/.config/zed/settings.json
ln -sv $DOTFILE_DIR/lazyvim/init.lua                              ~/.config/nvim/init.lua
ln -sv $DOTFILE_DIR/lazyvim/lua/config/autocmds.lua               ~/.config/nvim/lua/config/autocmds.lua
ln -sv $DOTFILE_DIR/lazyvim/lua/config/keymaps.lua                ~/.config/nvim/lua/config/keymaps.lua
ln -sv $DOTFILE_DIR/lazyvim/lua/config/lazy.lua                   ~/.config/nvim/lua/config/lazy.lua
ln -sv $DOTFILE_DIR/lazyvim/lua/config/options.lua                ~/.config/nvim/lua/config/options.lua
ln -sv $DOTFILE_DIR/lazyvim/lua/plugins/example.lua               ~/.config/nvim/lua/plugins/example.lua
ln -sv $DOTFILE_DIR/lazyvim/stylua.toml                           ~/.config/nvim/stylua.toml
ln -sv $DOTFILE_DIR/.gnupg/gpg-agent.conf                         ~/.gnupg/gpg-agent.conf
ln -sv $DOTFILE_DIR/vscode/settings.json                          ~/Library/Application\ Support/Code/User/settings.json
ln -sv $DOTFILE_DIR/.newsboat/urls                                ~/.newsboat/urls
