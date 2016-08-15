# git
alias gac='_(){ git add "$1"; git commit -m "$2"; }; _'
alias gaac='_(){ git add -A; git commit -m "$1"; }; _'
alias gp='git push'


# shutdown because of ubuntu bug
alias po='sudo swapoff -a && systemctl poweroff'
