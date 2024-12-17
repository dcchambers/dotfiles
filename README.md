# dotfiles and mac config

My public dotfiles and mac configuration.

Does not include more sensitive files (eg `.ssh`).

## Usage

- I would recommend using symlinks to 'place' these dotfiles in your home directory `~`.
  - Use the included `create-symlinks.sh` script.
  - Or `ln -sv /path/to/a/dotfile ~` will create a symlink to your home directory, where most programs expect dotfiles to be.

## Mac Config

Brewfile and scripts to bootstrap a fresh Mac install.

- Installs xcode command line tools.
- Installs Homebrew and tools/apps listed in the [Brewfile](mac-config/Brewfile).
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
  machines. I recently separated my dotfiles for my work computer into a separate private repostitory because sharing configurationw was getting messy.
  - 2022 13" Macbook Air (M2)
  - 2024 Mac Mini (M4)
- For details about the programs I use, see [my /uses page](https://chambers.io/uses)
