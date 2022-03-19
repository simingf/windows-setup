parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\[\e[34m\]\W \[\e[35m\]\$(parse_git_branch)\[\e[34m\]> "

cd "C:\Users\Simin\Documents"

alias c="clear"
alias sl="ls" #typo safe
alias rm="rm -rf" #rm removes folders
alias count='find . -type f | wc -l' #counts number of files in directory
alias gh='history | grep' #grep history
alias left='ls -t -1' #list by modification time (where I 'left' off)
alias gac='git add -A && git commit -a -m' #git add commit

alias home='cd ~'
alias doc='cd ~/Documents/'
alias dow='cd ~/Downloads/'
alias bro='cd ~/OneDrive/Brown/'
alias calc='cd ~/OneDrive/Brown/Semester\ 2/MATH0180\ Multivariable\ Calculus/'
alias alg='cd ~/OneDrive/Brown/Semester\ 2/MATH1530\ Abstract\ Algebra/'
alias cs='cd ~/Documents/cs32/'
