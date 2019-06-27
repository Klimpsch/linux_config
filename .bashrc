# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export EDITOR=vim

#aliases

alias gac='git add -A && git commit -m'
alias gpo='git push -u origin master'
alias xsu='sudo xbps-install -Su -y'
alias xrs='xbps-query -Rs'
alias shd='sudo shutdown -h now'
