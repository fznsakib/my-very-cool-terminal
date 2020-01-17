# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

##############################
####### Main Config 
##############################

# Path to your oh-my-zsh installation.
export ZSH="/Users/faizaan/.oh-my-zsh"

# Terminal colours
export TERM="xterm-256color"

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"

##############################
####### Plugins
##############################

plugins=(
  git
  macports
  man
  osx
  python
  composer
  zsh-syntax-highlighting
  zsh-autosuggestions
  tmux
)

##############################
####### Powerlevel Config
##############################

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  user 
  dir_writable 
  dir 
  vcs
)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  status
  command_execution_time
  root_indicator
  ssh
  background_jobs
  battery
  time
)

# POWERLEVEL9K_SHORTEN_DELIMITER="~"
# POWERLEVEL9K_DIR_ANCHOR_BOLD=true
# POWERLEVEL9K_DIR_MIN_COMMAND_COLUMNS_PCT=75
POWERLEVEL9K_DIR_HYPERLINK=true

# Prompt stays on one line
POWERLEVEL9K_PROMPT_ON_NEWLINE=false

# Icons
POWERLEVEL9K_ROOT_ICON="\uF09C"
POWERLEVEL9K_VCS_GIT_ICON='\uF408 '
POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uF408 '

# Custom segment customisation
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_DIR_FOREGROUND=015
POWERLEVEL9K_VCS_FOREGROUND=008
POWERLEVEL9K_BATTERY_VERBOSE=false

# Only show current directory in path
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1

# Create custom directory class based on path
POWERLEVEL9K_DIR_CLASSES=(
        '~/Documents/University(|/*)'  UNI  '📚'
        '~(|/*)'       HOME     '')

POWERLEVEL9K_DIR_UNI_BACKGROUND=013
POWERLEVEL9K_DIR_UNI_FOREGROUND=254

POWERLEVEL9K_DISABLE_HOT_RELOAD=true
POWERLEVEL9K_DIR_ANCHOR_BOLD=true
POWERLEVEL9K_INSTANT_PROMPT=verbose
ZSH_DISABLE_COMPFIX=true
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="false"

# Trims down prompt to show only on current line
POWERLEVEL9K_TRANSIENT_PROMPT=always

##############################
####### User Config
##############################

# functions
function opentb() { ssh -N -L 6006:"$1":"$2" bc4; }

# my zsh aliases
alias suroot='sudo -E -s'
alias uni="cd ~/Documents/University/2019-2020"
alias editbash="vim ~/.bash_profile"
alias sourcebash="source ~/.bash_profile"
alias editzsh="vim ~/.zshrc"
alias sourcezsh="source ~/.zshrc"

# output colouring
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

source $ZSH/oh-my-zsh.sh

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# texlive
PATH=/usr/local/texlive/2019/bin/x86_64-darwin:"${PATH}"
export PATH

# homebrew
export PATH="/usr/local/sbin:$PATH"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
