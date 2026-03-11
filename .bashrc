export PATH="$PATH:$HOME/.local/bin"
eval "$(zoxide init bash)"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
eval "$(mise activate bash)"
eval "$(atuin init bash)"
source -- ~/.local/share/blesh/ble.sh

printf "✔ .bashrc loaded\n"
