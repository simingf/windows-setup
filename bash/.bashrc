parse_git_branch() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\[\033[1;36m\](\W)\[\033[1;35m\]\$(parse_git_branch)\[\033[0;33m\]|> \[\e[00m\]" #show current directory before command

echo "-Welcome, Siming-"

# mapping to have up and down arrows search commands in history that match currently typed
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# mapping to have [Tab] and [Shift]+[Tab] to cycle through all the possible completions:
bind '"\t": menu-complete'
bind '"\e[Z": menu-complete-backward'
# when on: first tab lists all choices
bind "set show-all-if-ambiguous off"
# when on: first tab fills up to difference instead of selecting first option
bind "set menu-complete-display-prefix on" 
# when on: case insensitive
bind "set completion-ignore-case on"

#general aliases
alias e='exit'
alias c='clear'
alias mkdir='mkdir -pv'                      #makes parent folders and notifies all folders made
alias rm='rm -rv'                            #rm removes folders
alias open='start .'                 #open folder in file explorer
alias left='ls -t -1'                        #list by modification time (where I 'left' off)
alias size='du -hs'                          #size of current directory
alias sizes='du -h --max-depth=1 | sort -h'  #size of all contained directories
alias find.='ls | grep'                      #grep in current directory
alias grep='grep --color=auto --ignore-case' #colorize grep
alias hist='history | grep'                  #grep command history
alias clrhist='history -c && history -w'     #clear command history
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

#directory aliases
alias ..='cd ..'
alias doc='builtin cd ~/Documents/'
alias dow='builtin cd ~/Downloads/'
alias desk='builtin cd ~/Desktop/'
alias brown='cd ~/Documents/00Siming/Brown/'

#git alias
g() {
    if [[ "$@" == "" ]]; then
        git status
    elif [[ "$1" == "up" ]]; then
        shift #remove first argument
        git add --all
        git commit -a -m "$@"
        git push
    elif [[ "$1" == "commit" ]]; then
        shift #remove first argument
        git commit -m "$@"
    elif [[ "$@" == ".gitignore" ]]; then
        git rm -r --cached .
        git add .
        git commit -m "fix: .gitignore"
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

#competitive programming
alias cpp='code ~/Documents/Windows-Setup/C++\ CP/c++.code-workspace'
cf() { #input: page number
    start firefox https://codeforces.com/problemset/page/$1?order=BY_SOLVED_DESC
    exit
}

#browser
cs() { #input: course id
    if [[ "$1" == "" ]]; then
        start firefox https://bulletin.brown.edu/the-college/concentrations/comp/
    else
        start firefox https://cs.brown.edu/courses/csci$1/
    fi
    exit
}
r() {
    if [[ "$1" == "" ]]; then
        start firefox https://www.reddit.com/ 
    else
        start firefox https://www.reddit.com/r/$1/ 
    fi
    exit
}
yt() {
    if [[ "$1" == "" ]]; then
        start firefox https://www.youtube.com/
    elif [[ "$1" == "lofi" ]]; then
        start firefox https://www.youtube.com/watch?v=jfKfPfyJRdk/
    elif [[ "$1" == "toast" ]]; then
        start firefox https://www.youtube.com/@DisguisedToast/videos/
    else
        start firefox https://www.youtube.com/@$1/videos/
    fi
    exit
}
fmab() {
    start firefox https://animixplay.to/v1/fullmetal-alchemist-brotherhood-dub/ep$1/
    exit
}
alias gs='start firefox https://www.gradescope.com/ && exit'
alias github='start firefox https://github.com/ && exit'
alias monkey='start firefox https://monkeytype.com/ && exit'
alias wordle='start firefox https://www.nytimes.com/games/wordle/index.html && exit'

#windows-setup
wincp() {
    cp ~/.bashrc ~/Documents/Windows-Setup/bash/
    cp ~/.minttyrc ~/Documents/Windows-Setup/bash/
    cp ~/Documents/hotkeys.ahk ~/Documents/Windows-Setup/hotkeys/
    cp ~/Documents/Rainmeter/Skins/Ultracalendar/Ultra\ calendar.ini ~/Documents/Windows-Setup/Rainmeter
    echo "setup files copied!"
}
alias win='cd ~/Documents/Windows-Setup/ && wincp'
alias editmd='code ~/Documents/Windows-Setup/README.md'
alias editrc='code ~/.bashrc'
alias editmint='code ~/.minttyrc'
alias edithk='code ~/Documents/hotkeys.ahk'
alias editcal='code ~/Documents/Rainmeter/Skins/Ultracalendar/Ultra\ calendar.ini'
alias winup='win && g up'
