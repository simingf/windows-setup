parse_git_branch() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\[\033[1;36m\](\W)\[\033[1;35m\]\$(parse_git_branch)\[\033[0;33m\]|> \[\e[00m\]" #show current directory before command

PROMPT_COMMAND="export PROMPT_COMMAND=echo" #print new line after every command

echo "-Welcome, Siming-"

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
alias restart='home && source .bashrc && doc'

cd() {
    DIR="$*";
    # if no DIR given, go home
    if [ $# -lt 1 ]; then
        DIR=$HOME;
    fi;
    builtin cd "${DIR}" && ls
}

#vscode
alias vsc='code . && exit'

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

#CS33 aliases
alias vboxmanage='"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe"'
alias 33='doc && cd CS33'
alias v='vagrant'

#DL aliases
. /c/Users/Simin/miniconda3/etc/profile.d/conda.sh
alias dl='doc && cd DL && conda activate 1470'
alias deact='conda deactivate'

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
alias win='cd ~/Documents/Windows-Setup/'
alias editreadme='code ~/Documents/Windows-Setup/README.md'
alias editrc='code ~/.bashrc'
alias editmint='code ~/.minttyrc'
alias edithotkeys='code ~/Documents/hotkeys.ahk'
alias editcalendar='code ~/Documents/Rainmeter/Skins/Ultracalendar/Ultra\ calendar.ini'
wincp() {
    cp ~/.bashrc ~/Documents/Windows-Setup/bash/ && echo ".bashrc updated"
    cp ~/.minttyrc ~/Documents/Windows-Setup/bash/ && echo ".minttyrc updated"
    cp ~/Documents/hotkeys.ahk ~/Documents/Windows-Setup/hotkeys/ && echo "hotkeys updated"
    cp ~/Documents/Rainmeter/Skins/Ultracalendar/Ultra\ calendar.ini ~/Documents/Windows-Setup/rainmeter && echo "ultra calendar updated"
}
alias winup='wincp && win && g up'
