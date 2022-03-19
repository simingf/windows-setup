parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\[\e[34m\]\W/\[\e[35m\]\$(parse_git_branch)\[\e[34m\]> "

cd "C:\Users\Simin\Documents"

alias c='clear'
alias sl='ls' #typo safe
alias mkdir='mkdir -pv' #makes parent folders and notifies all folders made
alias rm='rm -rf' #rm removes folders
alias open='start .' #open folder in file explorer
alias count='find . -type f | wc -l' #counts number of files in directory
alias hist='history | grep' #grep history
alias left='ls -t -1' #list by modification time (where I 'left' off)
alias gac='git add -A && git commit -a -m' #git add commit
alias gp='git push'

alias cd..='cd ..'
alias ..="cd .."
alias home='cd ~'
alias doc='cd ~/Documents/'
alias dow='cd ~/Downloads/'
alias cs='cd ~/Documents/cs32/'
alias brown='cd ~/OneDrive/Brown/'
alias calc='cd ~/OneDrive/Brown/Semester\ 2/MATH0180\ Multivariable\ Calculus/'
alias alg='cd ~/OneDrive/Brown/Semester\ 2/MATH1530\ Abstract\ Algebra/'

alias canvas='start firefox https://canvas.brown.edu/ && exit'
alias github='start firefox https://github.com/ && exit'
alias notion='start firefox https://www.notion.so/ && exit'
alias slack='start firefox https://fullstackatbrown.slack.com/ && exit'
alias music='start firefox https://music.apple.com/library/recently-added && exit'
alias youtube='start firefox https://www.youtube.com/ && exit'
alias netflix='start firefox https://www.netflix.com/browse && exit'
