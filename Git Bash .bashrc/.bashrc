parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\[\e[34m\]\W \[\e[35m\]\$(parse_git_branch)\[\e[34m\]> "