parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\[\e[34m\]\W/\[\e[35m\]\$(parse_git_branch)\[\e[34m\]> "

cd "C:\Users\Simin\Documents"

alias e='exit'
alias c='clear'
alias sl='ls' #typo safe
alias mkdir='mkdir -pv' #makes parent folders and notifies all folders made
alias rm='rm -rf' #rm removes folders
alias open='start . && exit' #open folder in file explorer
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
alias win='cd ~/Documents/Windows-Setup/'
alias brown='cd ~/OneDrive/Brown/'
alias calc='cd ~/OneDrive/Brown/Semester\ 2/MATH0180\ Multivariable\ Calculus/'
alias calchw='calc && start firefox MATH0180\ Textbook.pdf && start firefox MATH0180\ HW\ Problems.pdf && exit'
alias alg='cd ~/OneDrive/Brown/Semester\ 2/MATH1530\ Abstract\ Algebra/'
alias alghw='alg && start firefox MATH1530\ Textbook.pdf && start firefox MATH1530\ Schedule\ and\ Homework.pdf && exit'

alias fox='start firefox && exit'
alias canvas='start firefox https://canvas.brown.edu/ && exit'
alias gmail='start firefox https://mail.google.com/mail/u/0/#inbox && exit'
alias github='start firefox https://github.com/ && exit'
alias notion='start firefox https://www.notion.so/ && exit'
alias slack='start firefox https://fullstackatbrown.slack.com/ && exit'
alias music='start firefox https://music.apple.com/library/recently-added && exit'
alias youtube='start firefox https://www.youtube.com/ && exit'
alias netflix='start firefox https://www.netflix.com/browse && exit'

alias cpbash='home && cp .bashrc ~/Documents/Windows-Setup/bash/' #copy bashrc to windows-setup folder
alias restart='home && source .bashrc'
