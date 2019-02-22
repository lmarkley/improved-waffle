# LAROLD's ZSHRC

#
# ENVIRONMENT VARIABLES
#

export HOMEBREW_NO_ANALYTICS=1
EDITOR=vim
PATH=$HOME/.cargo/bin:$PATH
PATH="/usr/local/opt/llvm/bin:$PATH"
PATH=/usr/local/sbin:$PATH
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time ram ip ssh)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
TERM="xterm-256color"
AM_THEME=terminal
PROMPT_START_TAG='\u03C4 \u21d2 '

#
# ANTIGEN
#

source $HOME/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-autosuggestions

antigen bundle sublime

antigen bundle zsh-users/zsh-syntax-highlighting

#antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship

#antigen theme bhilburn/powerlevel9k powerlevel9k

#antigen theme eendroroy/alien alien

antigen theme eendroroy/alien-minimal alien-minimal

antigen apply

#
# SPACESHIP OPTIONS
#

export SPACESHIP_TIME_SHOW=true
SPACESHIP_USER_SHOW='always'
SPACESHIP_HOST_SHOW='always'
SPACESHIP_NODE_SHOW='false'

#
# Aliases
#
source ~/.shell_files/aliases.sh

#
# Functions
#
source ~/.shell_files/functions.sh

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#
# OTHER
#

fpath=(/usr/local/share/zsh-completions $fpath)

# This line must go below the ANTIGEN section
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=4'

# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# zsh function directory on $fpath
fpath+=${ZDOTDIR:-~}/.zsh_functions
