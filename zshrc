# LAROLD's ZSHRC

#
# ENVIRONMENT VARIABLES
#

export HOMEBREW_NO_ANALYTICS=1
EDITOR=vim
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=3'
ZSH_AUTOSUGGEST_USE_ASYNC=true
PATH=$HOME/.cargo/bin:$PATH
PATH="/usr/local/opt/llvm/bin:$PATH"

#
# ANTIGEN
#

source $HOME/antigen.zsh

antigen use oh-my-zsh

#antigen bundle zsh-users/zsh-autosuggestions

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

#
# ALIASES
#

alias cl=' clear'
alias el='exa -lah'
alias et='exa -T'
alias afk='m lock'
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
alias ccat='ccat -G Keyword="darkgreen" -G Type="faint"'
alias spoofMAC="ifconfig en0 ether $(openssl rand -hex 6 | sed 's%\(..\)%\1:%g; s%.$%%')"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#
# FUNCTIONS
#

# sslpw()
# generate a password of length n
# arg1 is n
function sslpw() {
	openssl rand -base64 "$1"
}

# compdir()
# Compress directory with gzip and tar
# takes all args as the path of the directory to compress
function compdir () {
	tar -zcvf "$@".tar.gz "$@"
}

# dcdir()
# decompress tar.gz file
# $1 is the file path to decompress 
# $2 is the location to decompress into
function dcdir () {
	tar -zxvf "$1" "$2"
}
