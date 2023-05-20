
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

autoload -Uz compinit
compinit

for file in "$HOME"/.zshrc.d/*.zsh; do
  source "$file"
done
