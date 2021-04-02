source $HOME/.asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)

HISTFILE=$HOME/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

ZSH_PLUGINS_DIR=$HOME/.config/zsh/plugins

# Enable colors and change prompt
autoload -U colors && colors
PROMPT='👨 %F{135}%n%f in %F{148}🖿  %~%f $(git_prompt)
🖉  '

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

# Show branch info (Git)
git_prompt() {
  BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*\(.*\)/\1/')

  if [ ! -z $BRANCH ]; then
    echo -n "%F{208}$BRANCH"

    STATUS=$(git status --short 2> /dev/null)

    if [ ! -z "$STATUS" ]; then
      echo " %F{red}✗"
    fi
  fi
}

export EDITOR="nvim"
export VISUAL="nvim"
export DOTFILES_DIR=$HOME/proj/dotfiles

# Aliases
alias dc="docker-compose"
alias now="date \"+%d/%m/%Y %H:%M:%S\""
alias today="cal && now"
alias glo='git log --pretty="oneline"'
alias glol='git log --graph --oneline --decorate'
alias uuid="curl -w '\n' https://www.uuidgenerator.net/api/version4"
alias cnvim='nvim $HOME/.config/nvim/init.vim'
alias ci3='nvim $HOME/.config/i3/config'
alias ci3status='nvim $HOME/.config/i3status/config'
alias czsh='nvim $HOME/.zshrc'
alias calac='nvim $HOME/.config/alacritty/alacritty.yml'
alias cdproj='cd $HOME/proj'

# Commitizen Options
export CZ_MAX_HEADER_WIDTH=140

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
fi

export PATH="$PATH:$HOME/.dotnet"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source $ZSH_PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH_PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
