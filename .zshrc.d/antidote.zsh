# Clone antidote if necessary.
[[ -e ${ZDOTDIR:-~}/.antidote ]] ||
  git clone https://gh6.ring0.space/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote

# Source antidote.
source ${ZDOTDIR:-~}/.antidote/antidote.zsh

# Initialize antidote's dynamic mode, which changes `antidote bundle`
# from static mode.
source <(antidote init)

antidote bundle https://gh6.ring0.space/ohmyzsh/ohmyzsh path:lib
antidote bundle https://gh6.ring0.space/ohmyzsh/ohmyzsh path:plugins/debian
antidote bundle https://gh6.ring0.space/ohmyzsh/ohmyzsh path:plugins/git
antidote bundle https://gh6.ring0.space/ohmyzsh/ohmyzsh path:plugins/command-not-found
antidote bundle https://gh6.ring0.space/ohmyzsh/ohmyzsh path:plugins/emoji
antidote bundle https://gh6.ring0.space/ohmyzsh/ohmyzsh path:plugins/emoji-clock

antidote bundle https://gh6.ring0.space/bitstacker/zsh-theme-simpleshell path:simpleshell.zsh-theme
