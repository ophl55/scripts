# scripts
some scripts i frequently use

## pdflinkextractor.sh
extracts links to a list stored in a file and downloads the list

 * param 1: web-site
 * parem 2: pattern to find the required links

## setWindow
opens a program in a new window and sets the window to 1/3 of the screen.

 * param 1: program name
 * param 2: r [l] for right [left]

## .bash_aliases
### git
 * alias gac='_(){ git add "$1"; git commit -m "$2"; }; _'
 * alias gaac='_(){ git add -A; git commit -m "$1"; }; _'
 * alias gp='git push'

### shutdown because of ubuntu bug
 * alias po='sudo swapoff -a && systemctl poweroff'
