# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#aliases

alias gac='git add -A && git commit -m'
alias gpo='git push -u origin master'
