export PATH="$PATH:$HOME/.local/bin"
eval "$(zoxide init bash)"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
eval "$(mise activate bash)"
eval "$(atuin init bash)"                  # https://docs.atuin.sh/cli/guide/installation/
source -- ~/.local/share/blesh/ble.sh      # https://github.com/akinomyoga/ble.sh

printf "✔ .bashrc loaded\n"
