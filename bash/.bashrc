parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\[\e[35m\]|\[\e[34m\]\W\[\e[35m\]|\[\e[34m\]\$(parse_git_branch)\[\e[35m\]|> \[\e[00m\]"

cat ~/Documents/Windows-Setup/bash_start.txt

#general aliases
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
alias gs='git switch'

#software aliases
alias vscode='code && exit'
alias idea='cd /c/Program\ Files/JetBrains/IntelliJ\ IDEA\ 2021.3.2/bin/ && start idea64.exe && exit'
alias word='cd /c/Program\ Files/Microsoft\ Office/root/Office16/ && start WINWORD.exe && exit'

#komorebi aliases (TWM)
alias kstart='komorebic start'
alias kstop='komorebic stop'

#mvn aliases
alias mvnp='mvn package'
alias mvnt='mvn test'
alias run='./run --gui'

#directory aliases
alias cd..='cd ..'
alias ..="cd .."
alias home='cd ~'
alias doc='cd ~/Documents/'
alias dow='cd ~/Downloads/'
alias desk='cd ~/Desktop/'
alias cs32='cd ~/Documents/cs32/'
alias proj2='cs32 && cd project-2-janagony-kkang11-sfeng22/backend/'
alias win='cd ~/Documents/Windows-Setup/'
alias brown='cd ~/OneDrive/Brown/'
alias sem2='cd ~/OneDrive/Brown/Semester\ 2/'
alias calc='cd ~/OneDrive/Brown/Semester\ 2/MATH0180\ Multivariable\ Calculus/'
alias calctxt='start msedge file:///C:/Users/Simin/OneDrive/Brown/Semester%202/MATH0180%20Multivariable%20Calculus/MATH0180%20Textbook.pdf'
alias calchw='calctxt && start msedge file:///C:/Users/Simin/OneDrive/Brown/Semester%202/MATH0180%20Multivariable%20Calculus/MATH0180%20HW.pdf && exit'
alias alg='cd ~/OneDrive/Brown/Semester\ 2/MATH1530\ Abstract\ Algebra/'
alias algtxt='start msedge file:///C:/Users/Simin/OneDrive/Brown/Semester%202/MATH1530%20Abstract%20Algebra/MATH1530%20Textbook.pdf'
alias alghw='algtxt && algtxt && start msedge file:///C:/Users/Simin/OneDrive/Brown/Semester%202/MATH1530%20Abstract%20Algebra/MATH1530%20HW.pdf && exit'

#school aliases
alias edge='start msedge && exit'
alias mail='start msedge https://mail.google.com/mail/u/0/#inbox && exit'
alias canvas='start msedge https://canvas.brown.edu/ && exit'
alias edstem='start msedge https://edstem.org/us/dashboard && exit'
alias github='start msedge https://github.com/ && exit'
alias notion='start msedge https://www.notion.so/ && exit'
alias slack='start msedge https://fullstackatbrown.slack.com/ && exit'

#chill aliases
alias music='start msedge https://music.apple.com/library/recently-added && exit'
alias youtube='start msedge https://www.youtube.com/ && exit'
alias lofi='start msedge https://www.youtube.com/watch?v=5qap5aO4i9A && exit'
alias netflix='start firefox https://www.netflix.com/browse && exit' #streaming doesn't work well on edge
alias disney='start firefox https://www.disneyplus.com/home && exit' #streaming doesn't work well on edge
alias reddit='start msedge https://www.reddit.com/ && exit'
alias monkey='start msedge https://monkeytype.com/ && exit'

#misc. aliases
alias editrc='code ~/.bashrc'
alias cpbash='cp ~/.bashrc ~/Documents/Windows-Setup/bash/' #copy bashrc to windows-setup folder
alias cphotkeys='cp ~/Documents/hotkeys.ahk ~/Documents/Windows-Setup/autohotkey/' #copy hotkeys to windows-setup folder
alias restart='home && source .bashrc && doc'
