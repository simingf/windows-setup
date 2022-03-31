parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\[\e[35m\]|\[\e[34m\]\W\[\e[35m\]|\$(parse_git_branch)|> \[\e[00m\]"

cat ~/Documents/Windows-Setup/bash/bash_start.txt

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

#software aliases
alias vscode='code && exit'
alias idea='cd /c/Program\ Files/JetBrains/IntelliJ\ IDEA\ 2021.3.2/bin/ && start idea64.exe && exit'
alias word='cd /c/Program\ Files/Microsoft\ Office/root/Office16/ && start WINWORD.exe && exit'
alias wechat='cd /c/Program\ Files\ \(x86\)/Tencent/WeChat/ && start WeChat.exe && exit'

#git aliases
gup() { #git update (add commit push)
  git add -A
  git commit -a -m "$*"
  git push
  }
alias gp='git pull'
alias gs='git switch'

#mvn aliases
alias mvnp='mvn package'
alias mvnt='mvn test'
alias run='./run --gui'

#directory aliases
alias cd..='cd ..'
alias ..='cd ..'
alias home='cd ~'
alias doc='cd ~/Documents/'
alias dow='cd ~/Downloads/'
alias desk='cd ~/Desktop/'
alias win='cd ~/Documents/Windows-Setup/'
alias cs32='cd ~/Documents/cs32/'
alias proj2='cs32 && cd project-2-janagony-kkang11-sfeng22/backend/'
alias brown='cd ~/OneDrive/Brown/'
alias sem2='cd ~/OneDrive/Brown/Semester\ 2/'
alias calc='cd ~/OneDrive/Brown/Semester\ 2/MATH0180\ Multivariable\ Calculus/'
alias calctxt='start msedge file:///C:/Users/Simin/OneDrive/Brown/Semester%202/MATH0180%20Multivariable%20Calculus/MATH0180%20Textbook.pdf'
alias calchw='start msedge file:///C:/Users/Simin/OneDrive/Brown/Semester%202/MATH0180%20Multivariable%20Calculus/MATH0180%20HW.pdf'
alias calcstart='calctxt && calchw && exit'
alias alg='cd ~/OneDrive/Brown/Semester\ 2/MATH1530\ Abstract\ Algebra/'
alias algtxt='start msedge file:///C:/Users/Simin/OneDrive/Brown/Semester%202/MATH1530%20Abstract%20Algebra/MATH1530%20Textbook.pdf'
alias alghw='start msedge file:///C:/Users/Simin/OneDrive/Brown/Semester%202/MATH1530%20Abstract%20Algebra/MATH1530%20HW.pdf'
alias algstart='algtxt && algtxt && alghw && exit'
alias phil0210='cd ~/OneDrive/Brown/Semester\ 2/PHIL0210\ Early\ Modern\ Philosophy/'
phil() { 
  cd ~/OneDrive/Brown/Semester\ 2/PHIL0210\ Early\ Modern\ Philosophy/Lecture\ Notes/
  start 0210-2022-LEC$1.pdf
  exit
  }

#search functions
edge() { 
  sq=$(sed 's/ /+/g' <<< "$*") #support multi-word searches
  start msedge https://duckduckgo.com/?q=$sq
  exit
  }

fox() { 
  sq=$(sed 's/ /+/g' <<< "$*") #support multi-word searches
  start firefox https://duckduckgo.com/?q=$sq
  exit
  }

you() { 
  sq=$(sed 's/ /+/g' <<< "$*") #support multi-word searches
  start msedge https://www.youtube.com/results?search_query=$sq
  exit
  }

#school browser aliases
alias gmail='start msedge https://mail.google.com/mail/u/0/#inbox && exit'
alias canvas='start msedge https://canvas.brown.edu/ && exit'
alias edstem='start msedge https://edstem.org/us/dashboard && exit'
alias gradescope='start msedge https://www.gradescope.com/ && exit'
alias github='start msedge https://github.com/ && exit'
alias notion='start msedge https://www.notion.so/ && exit'
alias slack='start msedge https://fullstackatbrown.slack.com/ && exit'

#chill browser aliases
alias music='start msedge https://music.apple.com/library/recently-added && exit'
alias lofi='start msedge https://www.youtube.com/watch?v=5qap5aO4i9A && exit'
alias netflix='start firefox https://www.netflix.com/browse && exit' #streaming doesn't work well on edge
alias disney='start firefox https://www.disneyplus.com/home && exit' #streaming doesn't work well on edge
alias reddit='start msedge https://www.reddit.com/ && exit'
alias monkey='start msedge https://monkeytype.com/ && exit'

#misc. aliases
alias editrc='code ~/.bashrc'
alias editreadme='code ~/Documents/Windows-Setup/README.md'
alias cpbash='cp ~/.bashrc ~/Documents/Windows-Setup/bash/ && echo "bash updated"' #copy bashrc to windows-setup folder
alias cphotkeys='cp ~/Documents/hotkeys.ahk ~/Documents/Windows-Setup/hotkeys/ && echo "hotkeys updated"' #copy hotkeys to windows-setup folder
alias winupdate='cpbash && cphotkeys && win && gup'
alias restart='home && source .bashrc && doc'
