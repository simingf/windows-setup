parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\[\e[34m\]|\[\e[00m\]\W\[\e[34m\]|\$(parse_git_branch)|> \[\e[00m\]"

cat ~/Documents/Windows-Setup/bash/bash_start.txt

#general aliases
alias e='exit'
alias c='clear'
alias mkdir='mkdir -pv' #makes parent folders and notifies all folders made
alias rm='rm -rf' #rm removes folders
alias open='start . && exit' #open folder in file explorer
alias count='find . -type f | wc -l' #counts number of files in directory
alias hist='history | grep' #grep history
alias left='ls -t -1' #list by modification time (where I 'left' off)

#git aliases
gup() { #git update (add commit push)
  git add -A
  git commit -a -m "$*"
  git push
  }
alias gs='git switch'
alias gp='git pull'

#mvn aliases
alias mvnp='mvn package'
alias mvnt='mvn test'
alias run='./run --gui'

#directory aliases
alias ..='cd ..'
alias home='cd ~'
alias doc='cd ~/Documents/'
alias dow='cd ~/Downloads/'
alias desk='cd ~/Desktop/'
alias win='cd ~/Documents/Windows-Setup/'
alias cs='cd ~/Documents/cs32/'
alias 2front='cs && cd project-2-janagony-kkang11-sfeng22/frontend/table-react/table'
alias 2back='cs && cd project-2-janagony-kkang11-sfeng22/backend/'
alias brown='cd ~/OneDrive/Brown/'
alias sem2='cd ~/OneDrive/Brown/Semester\ 2/'
alias calc='cd ~/OneDrive/Brown/Semester\ 2/MATH0180\ Multivariable\ Calculus/'
alias calctxt='calc && start firefox MATH0180\ Textbook.pdf'
alias calchw='calc && start firefox MATH0180\ HW.pdf'
alias calcstart='calctxt && calchw && exit'
alias alg='cd ~/OneDrive/Brown/Semester\ 2/MATH1530\ Abstract\ Algebra/'
alias algtxt='alg && start firefox MATH1530\ Textbook.pdf'
alias alghw='alg && start firefox MATH1530\ HW.pdf'
alias algstart='algtxt && alghw && exit'
phil() { 
  cd ~/OneDrive/Brown/Semester\ 2/PHIL0210\ Early\ Modern\ Philosophy/Lecture\ Notes/
  start 0210-2022-LEC$1.pdf
  exit
  }

#search functions
fox() { 
  sq=$(sed 's/ /+/g' <<< "$*") #support multi-word searches
  start firefox https://duckduckgo.com/?q=$sq
  exit
  }
you() { 
  sq=$(sed 's/ /+/g' <<< "$*") #support multi-word searches
  start firefox https://www.youtube.com/results?search_query=$sq
  exit
  }

#school browser aliases
alias gmail='start firefox https://mail.google.com/mail/u/0/#inbox && exit'
alias canvas='start firefox https://canvas.brown.edu/ && exit'
alias edstem='start firefox https://edstem.org/us/dashboard && exit'
alias gradescope='start firefox https://www.gradescope.com/ && exit'
alias cs32='start firefox https://cs.brown.edu/courses/cs0320/ && exit'
alias github='start firefox https://github.com/ && exit'
alias notion='start firefox https://www.notion.so/ && exit'
alias slack='start firefox https://fullstackatbrown.slack.com/ && exit'

#chill browser aliases
alias music='start firefox https://music.apple.com/library/recently-added && exit'
alias lofi='start firefox https://www.youtube.com/watch?v=5qap5aO4i9A && exit'
alias netflix='start firefox https://www.netflix.com/browse && exit'
alias disney='start firefox https://www.disneyplus.com/home && exit'
alias reddit='start firefox https://www.reddit.com/ && exit'
alias monkey='start firefox https://monkeytype.com/ && exit'

#misc. aliases
alias editrc='code ~/.bashrc'
alias editreadme='code ~/Documents/Windows-Setup/README.md'
alias cpbash='cp ~/.bashrc ~/Documents/Windows-Setup/bash/ && echo ".bashrc updated"' #copy bashrc to windows-setup folder
alias cpmintty='cp ~/.minttyrc ~/Documents/Windows-Setup/bash/ && echo ".minttyrc updated"'
alias cphotkeys='cp ~/Documents/hotkeys.ahk ~/Documents/Windows-Setup/hotkeys/ && echo "hotkeys updated"' #copy hotkeys to windows-setup folder
alias cpcalendar='cp ~/Documents/Rainmeter/Skins/Ultracalendar/Ultra\ calendar.ini ~/Documents/Windows-Setup/rainmeter && echo "ultra calendar updated"'
alias winupdate='cpbash && cpmintty && cphotkeys && cpcalendar && win && gup'
alias restart='home && source .bashrc && doc'
