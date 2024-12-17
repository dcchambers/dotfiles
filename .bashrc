export PATH="$PATH:$HOME/.local/bin"
eval "$(zoxide init bash)"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
printf "✔ .bashrc loaded\n"
