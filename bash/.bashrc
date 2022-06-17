parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\[\033[1;36m\](\W)\[\033[1;35m\]\$(parse_git_branch)\[\033[0;33m\]|> \[\e[00m\]"

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
alias size='du -hs'
alias insize='du -h --max-depth=1'
alias code.='code . && exit'

#git aliases
gup() { #git update (add commit push)
  git add -A
  git commit -a -m "$*"
  git push
  }
alias pull='git pull'
alias diff='git diff'
alias status='git status'
alias log='git log'
alias switch='git switch'

#directory aliases
alias ..='cd ..'
alias home='cd ~'
alias doc='cd ~/Documents/'
alias dow='cd ~/Downloads/'
alias desk='cd ~/Desktop/'
alias fsab='cd ~/Documents/FSAB/project-shotokan-karate/'
alias brown='cd ~/OneDrive/Brown/'
phil() { 
  cd ~/OneDrive/Brown/Semester\ 2/PHIL0210\ Early\ Modern\ Philosophy/Lecture\ Notes/
  start 0210-2022-LEC$1.pdf
  exit
  }

#search functions
duck() { 
  sq=$(sed 's/ /+/g' <<< "$*") #support multi-word searches
  start firefox https://duckduckgo.com/?q=$sq
  exit
  }
youtube() { 
  sq=$(sed 's/ /+/g' <<< "$*") #support multi-word searches
  start firefox https://www.youtube.com/results?search_query=$sq
  exit
  }

#school browser aliases
alias gmail='start firefox https://mail.google.com/mail/u/0/#inbox && exit'
alias canvas='start firefox https://canvas.brown.edu/ && exit'
alias edstem='start firefox https://edstem.org/us/dashboard && exit'
alias grades='start firefox https://www.gradescope.com/ && exit'
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
alias wordle='start firefox https://www.nytimes.com/games/wordle/index.html && exit'
alias toast='start firefox https://www.youtube.com/c/DisguisedToast/videos?view=0&sort=dd&flow=grid && exit'

#misc. aliases
alias win='cd ~/Documents/Windows-Setup/'
alias editrc='code ~/.bashrc'
alias cprc='cp ~/.bashrc ~/Documents/Windows-Setup/bash/ && echo ".bashrc updated"' #copy bashrc to windows-setup folder
alias editmint='code ~/.minttyrc'
alias cpmint='cp ~/.minttyrc ~/Documents/Windows-Setup/bash/ && echo ".minttyrc updated"'
alias editreadme='code ~/Documents/Windows-Setup/README.md'
alias cphotkeys='cp ~/Documents/hotkeys.ahk ~/Documents/Windows-Setup/hotkeys/ && echo "hotkeys updated"' #copy hotkeys to windows-setup folder
alias cpcalendar='cp ~/Documents/Rainmeter/Skins/Ultracalendar/Ultra\ calendar.ini ~/Documents/Windows-Setup/rainmeter && echo "ultra calendar updated"'
alias winupdate='cprc && cpmint && cphotkeys && cpcalendar && win && gup'
alias restart='home && source .bashrc && doc'
