# dotfiles

- A repo containing my public dotfiles. Not included are some more sensitive files (eg .ssh) and other work stuff.

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

## Other Specifications

- I am using a Mac with OS X 10.15 Catalina.
- I use `Terminal.app`, the standard MacOS terminal emulator.
- Bash is my preferred shell, although I experiment with zsh and fish shell as
  well.
- My color scheme is [Monokai Pro](https://github.com/dcchambers/macos-terminal-themes/blob/master/schemes/Monokai%20Pro%20\(Filter%20Spectrum\).terminal) although that does change occasionally. ([Screenshot](https://github.com/dcchambers/macos-terminal-themes/blob/master/screenshots/monokai_pro__filter_spectrum_.terminal.png))
- My [Brewfile](https://github.com/dcchambers/mac-config) lists the tools and apps I use.
