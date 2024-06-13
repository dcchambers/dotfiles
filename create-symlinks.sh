#!/bin/sh

# Use this script to automatically create symlinks to `~` for *everything* in this repo.

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

ln -sv $PWD/.vimrc                                        ~
ln -sv $PWD/.tmux.conf                                    ~
ln -sv $PWD/.bash_profile                                 ~
ln -sv $PWD/.bashrc                                       ~
ln -sv $PWD/.ticker.yaml                                  ~
ln -sv $PWD/.cobra.yaml                                   ~
ln -sv $PWD/.gitconfig-public                             ~
ln -sv $PWD/.config/alacritty/alacritty.toml              ~/.config/alacritty/alacritty.toml
ln -sv $PWD/.config/alacritty/themes/monokai_pro.toml     ~/.config/alacritty/themes/monokai_pro.toml
ln -sv $PWD/.config/alacritty/themes/solarized_light.toml ~/.config/alacritty/themes/solarized_light.toml
ln -sv $PWD/.config/gh/config.yml                         ~/.config/gh/config.yml
ln -sv $PWD/.config/notekeeper/noterc                     ~/.config/notekeeper/noterc
ln -sv $PWD/.config/zed/settings.json                     ~/.config/zed/settings.json
ln -sv $PWD/lazyvim/init.lua                      ~/.config/nvim/init.lua
ln -sv $PWD/lazyvim/lua/config/autocmds.lua       ~/.config/nvim/lua/config/autocmds.lua
ln -sv $PWD/lazyvim/lua/config/keymaps.lua        ~/.config/nvim/lua/config/keymaps.lua
ln -sv $PWD/lazyvim/lua/config/lazy.lua           ~/.config/nvim/lua/config/lazy.lua
ln -sv $PWD/lazyvim/lua/config/options.lua        ~/.config/nvim/lua/config/options.lua
ln -sv $PWD/lazyvim/lua/plugins/example.lua       ~/.config/nvim/lua/plugins/example.lua
ln -sv $PWD/lazyvim/stylua.toml                   ~/.config/nvim/stylua.toml
ln -sv $PWD/.gnupg/gpg-agent.conf                         ~/.gnupg/gpg-agent.conf
ln -sv $PWD/vscode/settings.json                          ~/Library/Application\ Support/Code/User/settings.json
ln -sv $PWD/.newsboat/urls                                ~/.newsboat/urls
