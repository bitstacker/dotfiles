zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit

for file in "$HOME"/.zshrc.d/*.zsh; do
  source "$file"
done
