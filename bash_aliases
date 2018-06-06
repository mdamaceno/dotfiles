alias dc="docker-compose"
alias kb="sh $HOME/.scripts/keyboard.sh"
alias xinfo="xwininfo -stats -wm"
alias updatesys="sudo dnf update"
alias weather="curl -s \"http://wttr.in/Juiz+de+Fora?lang=pt\""
alias _='sudo'
alias tmux="tmux -2"
alias dtmux="cat $HOME/Documents/cheatsheets/tmux/tmux-cheatsheet.markdown | less"
alias gdrive="$HOME/.local/bin/gdrive-linux-x64"
alias install="sudo dnf install"
alias spkg="dnf search"

# GIT
alias gacp="git add . && git commit --allow-empty-message && git push origin"
alias gac="git add . && git commit --allow-empty-message"
alias gpull="git pull origin"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias nah="git reset --hard && git clean -df"
