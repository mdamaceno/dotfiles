source $HOME/.asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)

HISTFILE=$HOME/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

ZSH_PLUGINS_DIR=$HOME/.config/zsh/plugins

# Enable colors and change prompt
autoload -U colors && colors
PROMPT='🤖 %F{140}%n%f in %~%f $(git_prompt)
~> %F{default}'

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Enable prompt substitions
setopt prompt_subst

# Set some keybidings
source $HOME/.config/zsh/key-bindings.zsh

# Set completions
source $HOME/.config/zsh/completion.zsh

# Show branch info (Git)
git_prompt() {
  BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*\(.*\)/\1/')

  if [ ! -z $BRANCH ]; then
    echo -n "🌵%F{208}$BRANCH"

    STATUS=$(git status --short 2> /dev/null)

    if [ ! -z "$STATUS" ]; then
      echo " %F{red}✗"
    fi
  fi
}

git_current_branch() { git branch --show-current }

export EDITOR="nvim"
export VISUAL="nvim"
export DOTFILES_DIR=$HOME/proj/dotfiles

### Aliases ###
alias dc="docker-compose"
alias now="date \"+%d/%m/%Y %H:%M:%S\""
alias today="cal && now"
alias uuid="$HOME/.bin/uuid_generator"
alias vim='nvim'
alias vi='nvim'
alias cnvim='nvim $HOME/.config/nvim/init.vim'
alias ci3='nvim $HOME/.config/i3/config'
alias ci3status='nvim $HOME/.config/i3status/config'
alias czsh='nvim $HOME/.zshrc'
alias calac='nvim $HOME/.config/alacritty/alacritty.yml'
alias ctmux='nvim $HOME/.tmux.conf'
alias cxinit='nvim $HOME/.xinitrc'
alias ckb='nvim $HOME/.config/sxhkd/sxhkdrc'
alias cdproj='cd $HOME/proj'
alias weather='clear && echo "Loading..." && curl wttr.in/juiz+de+fora'
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias ..='cd ..'
alias mv='mv -i'
alias rm='rm -i'
alias ls='exa'
alias cat='nvimpager -c'
alias grep='grep --color=auto'
alias rspec='bin/rspec'
alias rtinker='bin/console'
alias sail='bash vendor/bin/sail'
alias tmux='tmux -2'
alias kbd='sh $HOME/.bin/detect_usb'
alias updategrub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias updatemirrors='sudo reflector --latest 20 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'
alias plex="xdg-open "http://192.168.2.130:32400/web""
alias marcoserver="ssh 192.168.2.130"
alias night="pkill -USR1 redshift"
alias fontcache="fc-cache -fv"
alias reload_udev="sudo udevadm control --reload"
alias pager="nvimpager"

# Dialog
alias dial="cd /run/media/mdamaceno/SECONDARY/Work/dialog"

# SystemD
alias s-status="sudo systemctl status"
alias s-start="sudo systemctl start"
alias s-stop="sudo systemctl stop"
alias s-enable="sudo systemctl enable"
alias s-disable="sudo systemctl disable"

# Apt Get (Debian)
alias upgrade="sudo apt update && sudo apt upgrade"
alias uplist="sudo apt list --upgradable"
alias i="sudo apt install"

# Zypper (OpenSUSE)
alias zin="sudo zypper in"
alias zup="sudo zypper ref && sudo zypper up && sudo zypper dup && flatpak update"
alias zrm="sudo zypper rm"
alias zse="zypper search"

# Translation
alias pt2en="trans -b pt:en"
alias en2pt="trans -b en:pt"
alias pt2es="trans -b pt:es"
alias es2pt="trans -b es:pt"

# Clipboard
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# Bundle
alias be='bundle exec'

# Git
alias lg="lazygit-gm"
alias glo='git log --pretty="oneline" --abbrev-commit'
alias glol="git log --graph --decorate --pretty=oneline --abbrev-commit"
alias gstatus='git status'
alias gpull="git pull origin $(git branch --show-current)"
alias gco='git checkout'
alias gpush="git push origin $(git branch --show-current)"

### END Aliases ###

### Keyboard shortcuts ###
function gitstatus() { echo "git status"; git status; zle reset-prompt }
function gitdiff() { echo "git diff"; git diff; zle reset-prompt }
function gitpull() { echo "git pull origin $(git_current_branch)"; git pull origin $(git_current_branch); zle reset-prompt }

zle -N gitstatus
zle -N gitdiff
zle -N gitpull

bindkey '^gs' gitstatus
bindkey '^gd' gitdiff
bindkey '^gpu' gitpull
### END Keyboard shortcuts ###

# Commitizen Options
export CZ_MAX_HEADER_WIDTH=140

# export PAGER=nvimpager

# if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
#     source /etc/profile.d/vte.sh
# fi

# export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'

# export PATH="$PATH:$HOME/.dotnet"
# export PATH="$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# source $ZSH_PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH_PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH_PLUGINS_DIR/zsh-extract/extract.plugin.zsh

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/home/mdamaceno/google-cloud-sdk/path.zsh.inc' ]; then . '/home/mdamaceno/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/home/mdamaceno/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/mdamaceno/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$PATH:$HOME/.asdf/installs/rust/1.65.0/bin"
fpath+=${ZDOTDIR:-~}/.zsh_functions

export PATH="${PATH}:/home/mdamaceno/.cargo/bin"
export PATH="$PATH:$HOME/go/bin"

export PATH="$PATH:$HOME/bin"

LD_LIBRARY_PATH=/usr/local/lib
export LD_LIBRARY_PATH

setxkbmap -option caps:swapescape
setxkbmap -option compose:ralt
