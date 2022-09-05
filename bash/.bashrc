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
alias insize='du -h --max-depth=1 | sort -h'
alias restart='home && source .bashrc && doc'

#hashtwm startup
alias twm='doc && start hashtwm.exe -a mintty -a Chrome_WidgetWin_1 -a Notepad -a WeChatMainWndForPC'

#git aliases
g() { #git
  if [[ "$@" == "" ]]
  then
    git status
  elif [[ "$1" == "up" ]]
  then
    shift #remove first argument
    git add --all
    git commit -a -m "$@"
    git push
  elif [[ "$@" == "diff" ]]
  then
    git diff --name-status
  elif [[ "$@" == "branch" ]]
  then
    git branch -vv
  else
    git "$@"
  fi
}

#python venv aliases
alias activate='source venv/Scripts/activate'

#directory aliases
alias ..='cd ..'
alias home='cd ~'
alias doc='cd ~/Documents/'
alias dow='cd ~/Downloads/'
alias desk='cd ~/Desktop/'
alias brown='cd ~/Documents/00Siming/Brown/'
alias cpp='code ~/Documents/Windows-Setup/C++\ CP/c++.code-workspace'

#search functions
fox() { 
  sq=$(sed 's/ /+/g' <<< "$*") #support multi-word searches
  start firefox https://duckduckgo.com/?q=$sq
  exit
  }
yt() { 
  sq=$(sed 's/ /+/g' <<< "$*") #support multi-word searches
  start firefox https://www.youtube.com/results?search_query=$sq
  exit
  }
cf() { #input: page number
  start firefox https://codeforces.com/problemset/page/$1?order=BY_SOLVED_DESC
  cpp
  exit
  }

#school browser aliases
alias gmail='start firefox https://mail.google.com/mail/u/0/#inbox && exit'
alias canvas='start firefox https://canvas.brown.edu/ && exit'
alias edstem='start firefox https://edstem.org/us/dashboard && exit'
alias grades='start firefox https://www.gradescope.com/ && exit'
alias github='start firefox https://github.com/ && exit'
alias notion='start firefox https://www.notion.so/ && exit'

#chill browser aliases
alias music='start firefox https://music.apple.com/library/recently-added && exit'
alias lofi='start firefox https://www.youtube.com/watch?v=jfKfPfyJRdk && exit'
alias netflix='start firefox https://www.netflix.com/browse && exit'
alias disney='start firefox https://www.disneyplus.com/home && exit'
alias reddit='start firefox https://www.reddit.com/ && exit'
alias monkey='start firefox https://monkeytype.com/ && exit'
alias wordle='start firefox https://www.nytimes.com/games/wordle/index.html && exit'
alias toast='start firefox https://www.youtube.com/c/DisguisedToast/videos?view=0&sort=dd&flow=grid && exit'

#windows-setup aliases
alias win='cd ~/Documents/Windows-Setup/'

alias editreadme='code ~/Documents/Windows-Setup/README.md'
alias editrc='code ~/.bashrc'
alias editmint='code ~/.minttyrc'
alias edithotkeys='code ~/Documents/hotkeys.ahk'
alias editcalendar='code ~/Documents/Rainmeter/Skins/Ultracalendar/Ultra\ calendar.ini'

alias cprc='cp ~/.bashrc ~/Documents/Windows-Setup/bash/ && echo ".bashrc updated"' #copy bashrc to windows-setup folder
alias cpmint='cp ~/.minttyrc ~/Documents/Windows-Setup/bash/ && echo ".minttyrc updated"'
alias cphotkeys='cp ~/Documents/hotkeys.ahk ~/Documents/Windows-Setup/hotkeys/ && echo "hotkeys updated"' #copy hotkeys to windows-setup folder
alias cpcalendar='cp ~/Documents/Rainmeter/Skins/Ultracalendar/Ultra\ calendar.ini ~/Documents/Windows-Setup/rainmeter && echo "ultra calendar updated"'

alias wincp='cprc && cpmint && cphotkeys && cpcalendar'
alias winup='wincp && win && gup'