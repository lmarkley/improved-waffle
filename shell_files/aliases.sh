#!/bin/bash -x 

alias cl=' clear'
alias el='exa -lah'
alias et='exa -T'
alias afk='m lock'
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
alias ccat='ccat -G Keyword="darkgreen" -G Type="faint"'
alias spoofMAC="ifconfig en0 ether $(openssl rand -hex 6 | sed 's%\(..\)%\1:%g; s%.$%%')"
alias did="vim +'normal Go' +'r!date' ~/did.txt"
