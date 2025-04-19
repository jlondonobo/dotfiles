
# oh-my-zsh setup
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
    git
    zsh-autosuggestions
    dotenv
    rye
)

source $ZSH/oh-my-zsh.sh

alias vpnconn="~/scripts/route_vpn.sh"

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Include private stuff that's not supposed to show up
# in the dotfiles repo
# From thorstenball.
local private="${HOME}/.zsh.d/private.sh"
if [ -e ${private} ]; then
  . ${private}
fi

## HISTORY

setopt INC_APPEND_HISTORY     # Immediately append to history file.
setopt EXTENDED_HISTORY       # Record timestamp in history.
setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS       # Dont record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS   # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS      # Do not display a line previously found.
setopt HIST_IGNORE_SPACE      # Dont record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS      # Dont write duplicate entries in the history file.
setopt SHARE_HISTORY          # Share history between all sessions.

## ALIASES

alias lls='ls -lhSr'
alias llt='ls -lrt'
alias bear='clear && echo "Clear as a bear!"'

alias history='history 1'
alias hs='history | grep '


alias gst='git status'
alias s='git status -sb'
alias gaa='git add -A'
alias gcm='git commit -m'
alias co='git checkout'
alias gs='git switch -'


# Open PR on GitHub
pr() {
  if type gh &> /dev/null; then
    gh pr view -w
  else
    echo "gh is not installed"
  fi
}

