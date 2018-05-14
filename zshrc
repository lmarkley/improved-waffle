# LAROLD's ZSHRC

#
# ENVIRONMENT VARIABLES
#

export HOMEBREW_NO_ANALYTICS=1
EDITOR=vim
PATH=$HOME/.cargo/bin:$PATH
PATH="/usr/local/opt/llvm/bin:$PATH"
PATH=/usr/local/sbin:$PATH

#
# ANTIGEN
#

source $HOME/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-autosuggestions

antigen bundle sublime

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship

antigen apply

#
# SPACESHIP OPTIONS
#

export SPACESHIP_TIME_SHOW=true
SPACESHIP_USER_SHOW='always'
SPACESHIP_HOST_SHOW='always'
SPACESHIP_NODE_SHOW='false'

#
# FUNCTIONS
#
source ~/.shell_files/aliases.sh

#
# ALIASES
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

