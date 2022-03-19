# dotfiles

- A repo containing my public dotfiles & mac configuration. Not included are some more sensitive files (eg .ssh) and work stuff.

## Usage

- I would recommend using symlinks to 'place' these dotfiles in your home directory `~`.
  - Use the included `create-symlinks.sh` script.
  - Or `ln -sv /path/to/a/dotfile ~` will create a symlink to your home directory, where most programs expect dotfiles to be.

## Categories

### Shell Stuff

- [`.bash_profile`](./.bash_profile)
- [`.tmux.conf`](./.tmux.conf)

### Editors

- [`.vimrc`](./.vimrc)

### CLI Tools

- [`.ticker.yaml`](./.ticker.yaml)
- [`noterc`](./.config/notekeeper/noterc)
- [`ranger`](./.config/ranger)

## mac-config

Brewfile and scripts to bootstrap a fresh Mac install.

- Installs xcode command line tools.
- Installs Homebrew and tools/apps listed in the [Brewfile](Brewfile).
- Configure [Dotfiles](https://github.com/dcchambers/dotfiles).

### Bootstrap

- Clone this repo to your new mac (or just [download a `.zip`](https://github.com/dcchambers/dotfiles/archive/refs/heads/master.zip) if you don't have `git` installed/configured yet).
  ```
  $ mkdir -p ~/Code && cd ~/Code && git clone https://github.com/dcchambers/dotfiles
  ```
- Open a terminal and navigate to the directory that has the `bootstrap.bash` script.
  ```
  $ cd ~/Code/dotfiles/mac-config
  ```
- Run the script and follow the instructions.
  ```
  $ ./bootstrap.bash
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

## Other Specifications

- I am using a Mac with MacOS Big Sur.
- I use `Terminal.app`, the standard MacOS terminal emulator.
- Bash is my preferred shell, although I experiment with zsh and fish shell as
  well.
- My color scheme is [Monokai Pro](https://github.com/dcchambers/macos-terminal-themes/blob/master/schemes/Monokai%20Pro%20\(Filter%20Spectrum\).terminal) although that does change occasionally. ([Screenshot](https://github.com/dcchambers/macos-terminal-themes/blob/master/screenshots/monokai_pro__filter_spectrum_.terminal.png))
