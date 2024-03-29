# User configuration
executeremote() {
  for i in $(echo $1 | sed "s/,/ /g")
  do
    ssh $i $2
  done
}

function ssl-cert-info {
    emulate -L zsh
    if [[ -z $1 ]] ; then
        printf 'usage: ssl-cert-info <file>\n'
        return 1
    fi
    openssl x509 -noout -text -in $1
    ssl-cert-fingerprints $1
}

#enable autocomplete hosts
compdef _hosts sshfunc
compdef _hosts sshfunc4
compdef _hosts telnetfunc

alias s=ssh
alias lucy="ssh -t -A lucy.plutex.de './.scripts/tmux.sh'"
alias lea="ssh -t -A lea.plutex.de './.scripts/tmux.sh'"
alias lina="ssh -t -A lina.plutex.de './.scripts/tmux.sh'"
alias exr=executeremote
alias insecssh='ssh -o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=/dev/null"'
alias ssl-cert-info=ssl-cert-info
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dgit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ipr="ip -c r && ip -6 -c r"
alias xkcdpass='xkcdpass -d "" -n3'

zstyle ':completion::complete:wpass::' prefix "$HOME/.password-store-work"
zstyle ':completion::complete:hpass::' prefix "$HOME/.password-store-home"

wpass() {
  PASSWORD_STORE_DIR=$HOME/.password-store-work pass $@
}

hpass() {
  PASSWORD_STORE_DIR=$HOME/.password-store-home pass $@
}

compdef _pass wpass
compdef _pass hpass

compdef __gitcomp dotfiles
compdef __gitcomp dgit
