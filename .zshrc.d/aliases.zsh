# User configuration
sshfunc() {
    ssh "$1"
}
sshfunc4() {
    ssh -4 "$1"
}
telnetfunc() {
    telnet "$1"
}

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

alias s=sshfunc
alias s4=sshfunc4
alias t=telnetfunc
alias exr=executeremote
alias insecssh='ssh -o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=/dev/null"'
alias ssl-cert-info=ssl-cert-info
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dgit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ipr="ip -c r && ip -6 -c r"
compdef __gitcomp dotfiles
compdef __gitcomp dgit
