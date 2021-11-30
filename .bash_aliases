# *****************************************************************
#
#       __               __                ___
#      / /_  ____ ______/ /_        ____ _/ (_)___ ______
#     / __ \/ __ `/ ___/ __ \______/ __ `/ / / __ `/ ___/
#  _ / /_/ / /_/ (__  ) / / /_____/ /_/ / / / /_/ (__  )
# (_)_.___/\__,_/____/_/ /_/      \__,_/_/_/\__,_/____/
#
# *****************************************************************

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias ls=lsd   # alias ls delux to be standard gnu ls

alias cls=clear

alias gs='git status'
alias ga='git add .'
alias gc='git commit'
alias gp='git push'

alias sob='source ~/.bashrc'

alias bat='batcat'  # batcat a fun replacement to cat written in rust

# Some sudos

alias sagud='sudo apt update'
alias salst='sudo list --upgradeable'
alias sagup='sudo apt upgrade'
alias sagin='sudo apt install'

