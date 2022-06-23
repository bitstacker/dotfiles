zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
autoload -Uz zmv
compinit

for file in "$HOME"/.zshrc.d/*.zsh; do
  source "$file"
done

if [ -d "$HOME/.scripts" ] ; then
    PATH="$HOME/.scripts:$PATH"
fi
