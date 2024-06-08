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

export EDITOR="nvim"
export VISUAL="nvim"
export DOTFILES_DIR=$HOME/dotfiles

### Aliases ###
source $HOME/.alias
### END Keyboard shortcuts ###

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source $ZSH_PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh

source $HOME/.asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)
export PATH="$PATH:$HOME/.asdf/installs/rust/1.78.0/bin"
fpath+=${ZDOTDIR:-~}/.zsh_functions

export PATH="${PATH}:/home/mdamaceno/.cargo/bin"

export GOPATH=$HOME/go
export PATH="$PATH:$HOME/go/bin"

export PATH="$PATH:$HOME/bin"

LD_LIBRARY_PATH=/usr/local/lib
export LD_LIBRARY_PATH

export FLYCTL_INSTALL="/home/mdamaceno/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# setxkbmap -option caps:swapescape
# setxkbmap -option compose:ralt
