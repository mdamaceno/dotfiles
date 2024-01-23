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
source $HOME/.alias

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

source $ZSH_PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/home/mdamaceno/google-cloud-sdk/path.zsh.inc' ]; then . '/home/mdamaceno/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/home/mdamaceno/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/mdamaceno/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$PATH:$HOME/.asdf/installs/rust/1.65.0/bin"
fpath+=${ZDOTDIR:-~}/.zsh_functions

export PATH="${PATH}:/home/mdamaceno/.cargo/bin"

export GOPATH=$HOME/go
export PATH="$PATH:$HOME/go/bin"

export PATH="$PATH:$HOME/bin"

LD_LIBRARY_PATH=/usr/local/lib
export LD_LIBRARY_PATH

setxkbmap -option caps:swapescape
setxkbmap -option compose:ralt
# -- START ACTIVESTATE INSTALLATION
export PATH="/home/mdamaceno/.komodoide/12.0/XRE/state/bin:$PATH"
# -- STOP ACTIVESTATE INSTALLATION
# -- START ACTIVESTATE DEFAULT RUNTIME ENVIRONMENT
export PATH="/home/mdamaceno/.cache/activestate/bin:$PATH"
# -- STOP ACTIVESTATE DEFAULT RUNTIME ENVIRONMENT

source $HOME/.local/share/swiftly/env.sh
