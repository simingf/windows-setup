parse_git_branch() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\[\033[1;36m\](\W)\[\033[1;35m\]\$(parse_git_branch)\[\033[0;33m\]|> \[\e[00m\]" #show current directory before command

echo "-Welcome, Siming-"

# mappings to have up and down arrow searching through history:
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# mapping to have [Tab] and [Shift]+[Tab] to cycle through all the possible completions:
bind '"\t": menu-complete'
bind '"\e[Z": menu-complete-backward'
# first tab lists all choices
bind "set show-all-if-ambiguous on"
# first tab fills up to difference instead of selecting first option
bind "set menu-complete-display-prefix on" 
# case insensitive
bind "set completion-ignore-case on"

#general aliases
alias e='exit'
alias c='clear'
alias mkdir='mkdir -pv'                      #makes parent folders and notifies all folders made
alias rm='rm -rf'                            #rm removes folders
alias open='start . && exit'                 #open folder in file explorer
alias left='ls -t -1'                        #list by modification time (where I 'left' off)
alias size='du -hs'                          #size of current directory
alias insize='du -h --max-depth=1 | sort -h' #size of all contained directories
alias grep='grep --color=auto'               #colorize grep
alias hist='history | grep'                  #grep history
alias count='find . -type f | wc -l'         #counts number of files in directory
alias restart='c && builtin cd && source .bashrc && doc'

cd() {
    DIR="$*";
    # if no DIR given, go home
    if [ $# -lt 1 ]; then
        builtin cd $HOME;
    else
        builtin cd "${DIR}" && ls;
    fi;
}

#git alias
g() {
    if [[ "$@" == "" ]]; then
        git status
    elif [[ "$1" == "up" ]]; then
        shift #remove first argument
        git add --all
        git commit -a -m "$@"
        git push
    elif [[ "$@" == "diff" ]]; then
        git diff --name-status
    elif [[ "$@" == "branch" ]]; then
        git branch -vv
    else
        git "$@"
    fi
}

#vscode
alias vsc='code . && exit'

#python alias
alias pytest='doc && builtin cd pytest && vsc'

#CS33 aliases
alias 33='doc && cd CS33'
alias v='vagrant'
alias vboxmanage='"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe"'

#DL aliases
alias dl='doc && cd DL'
. /c/Users/Simin/miniconda3/etc/profile.d/conda.sh

#32TA aliases
alias mvnp='mvn package'
alias mvnsa='mvn spotless:apply'
alias mvns='mvn site -Dmaven.javadoc.skip=true'

#directory aliases
alias ..='cd ..'
alias doc='builtin cd ~/Documents/'
alias dow='builtin cd ~/Downloads/'
alias desk='builtin cd ~/Desktop/'
alias brown='cd ~/Documents/00Siming/Brown/'

#competitive programming
alias cpp='code ~/Documents/Windows-Setup/C++\ CP/c++.code-workspace'
cf() { #input: page number
    start firefox https://codeforces.com/problemset/page/$1?order=BY_SOLVED_DESC
    exit
}

#browser
alias github='start firefox https://github.com/ && exit'
alias lofi='start firefox https://www.youtube.com/watch?v=jfKfPfyJRdk && exit'
alias monkey='start firefox https://monkeytype.com/ && exit'
alias wordle='start firefox https://www.nytimes.com/games/wordle/index.html && exit'
alias toast='start firefox https://www.youtube.com/c/DisguisedToast/videos?view=0&sort=dd&flow=grid && exit'

#windows-setup
wincp() {
    cp ~/.bashrc ~/Documents/Windows-Setup/bash/ && echo ".bashrc updated"
    cp ~/.minttyrc ~/Documents/Windows-Setup/bash/ && echo ".minttyrc updated"
    cp ~/Documents/hotkeys.ahk ~/Documents/Windows-Setup/hotkeys/ && echo "hotkeys updated"
    cp ~/Documents/Rainmeter/Skins/Ultracalendar/Ultra\ calendar.ini ~/Documents/Windows-Setup/rainmeter && echo "ultra calendar updated"
}
alias win='cd ~/Documents/Windows-Setup/ && wincp'
alias editreadme='code ~/Documents/Windows-Setup/README.md'
alias editrc='code ~/.bashrc'
alias editmint='code ~/.minttyrc'
alias edithotkeys='code ~/Documents/hotkeys.ahk'
alias editcalendar='code ~/Documents/Rainmeter/Skins/Ultracalendar/Ultra\ calendar.ini'
alias winup='wincp && win && g up'
