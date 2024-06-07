# dotfiles and mac config

- A repo containing my *public* dotfiles & mac configuration. Not included are some more sensitive files (eg `.ssh`) and work stuff.

## Usage

- I would recommend using symlinks to 'place' these dotfiles in your home directory `~`.
  - Use the included `create-symlinks.sh` script.
  - Or `ln -sv /path/to/a/dotfile ~` will create a symlink to your home directory, where most programs expect dotfiles to be.

## Mac Config

Brewfile and scripts to bootstrap a fresh Mac install.

- Installs xcode command line tools.
- Installs Homebrew and tools/apps listed in the [Brewfile](Brewfile).
- Configure [Dotfiles](https://github.com/dcchambers/dotfiles).

### Bootstrap

You can bootstrap a new mac using the included `bootstrap.sh` script. You should be able to run this script from a brand new mac using only included, default tools.

The script sets up a ssh key, configures git, downloads dotfiles, installs homebrew, and installs my commonly used packages/tools/apps via homebrew.

- Download the bootstrap script from this git repo:
  ```
  $ curl -o /tmp/bootstrap.sh https://raw.githubusercontent.com/dcchambers/dotfiles/master/mac-config/bootstrap.sh
  ```
- Run the script
  ```
  $ chmod +x /tmp/bootstrap.sh
  $ /tmp/bootstrap.sh
  ```

### Brewfile

- If you just want to install the applications listed in the `Brewfile`, run
  this command from the directory that contains your `Brewfile`. (Requires [Homebrew](https://brew.sh/))
  ```
  $ brew bundle install
  ```
- `Brewfile.personal` contains tools and applications I only want installed on
  my personal machine.
  ```
  $ brew bundle install --file Brewfile.personal
  ```

## Specifications

- These dotfiles are *mac-focused* and built to share some config between several
  machines.
  - My personal mac is a 13" 2015 MBP (Intel) running MacOS Monterey.
  - My work mac is a 16" 2021 MBP (M1 Pro) running MacOS Monterey.
- For years my go-to terminal/shell solution has been:
  - `Terminal.app`, the standard MacOS terminal emulator.
  - bash
  - tmux
  - vim
  - [Monokai Pro](https://github.com/dcchambers/macos-terminal-themes/blob/master/schemes/Monokai%20Pro%20\(Filter%20Spectrum\).terminal) ([Screenshot](https://github.com/dcchambers/macos-terminal-themes/blob/master/screenshots/monokai_pro__filter_spectrum_.terminal.png))
- But in 2024 I am trying something new:
  - [Alacritty](https://alacritty.org/)
  - zellij
  - bash (still)
  - neovim
  - [Monokai Pro](https://github.com/alacritty/alacritty-theme/blob/master/themes/monokai_pro.toml) ([Screenshot](https://github.com/alacritty/alacritty-theme/blob/master/images/monokai_pro.png))
    - I use Solarized light pretty much everywhere except for my terminal.
