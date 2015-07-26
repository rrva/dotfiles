export DOCKER_HOST="tcp://docker:2375"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim
export PAGER=less


# If not running interactively, do not do anything
[[ $- != *i* ]] && return

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export HISTCONTROL=ignoredups
shopt -s histappend
export HISTFILESIZE=1000000000
export HISTSIZE=1000000

shopt -s checkwinsize
source ~/.git-prompt.sh
PROMPT_COMMAND='__git_ps1 "[\W]" "\\\\$ "'
alias ls='ls -G'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

ssh-add ~/.ssh/id_rsa

if [[ -z "$TMUX" ]] ;then
    ID="`tmux ls | grep -vm1 attached | cut -d: -f1`" # get the id of a deattached session
    if [[ -z "$ID" ]] ;then # if not available create a new one
        tmux new-session
    else
        tmux attach-session -t "$ID" # if available attach to it
    fi
fi

export GREP_OPTIONS='--color=auto'
alias githist='git log --graph --oneline --all'
