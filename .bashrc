export PATH="$PATH:$HOME/.local/bin"
eval "$(zoxide init bash)"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
eval "$(mise activate bash)"
printf "✔ .bashrc loaded\n"
