source "$HOME"/.antigen/antigen.zsh
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle debian
antigen bundle git
antigen bundle command-not-found

# Load the theme.
antigen theme https://github.com/bitstacker/zsh-theme-simpleshell.git

# Tell Antigen that you're done.
antigen apply
