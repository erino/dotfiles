
# Local bin & Homebrew
PATH=~/bin:/usr/local/bin:$PATH
export PATH

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin
export PATH

if [ "$PS1" ]; then
  export HISTCONTROL=ignoredups
  export HISTSIZE=10000
fi

export EDITOR="vi"

source ~/bin/jump_to_project.sh
source ~/bin/clone_project.sh


# Set the prompt
#
function proml
{
    local DEFAULT="\[\033[0m\]"
    local BLACK="\[\033[0;30m\]"
    local GRAY="\[\033[1;30m\]"
    local GREEN="\[\033[0;32m\]"
    local LIGHT_GREEN="\[\033[1;32m\]"
    local BROWN="\[\033[0;33m\]"
    local YELLOW="\[\033[1;33m\]"
    local MAGENTA="\[\033[0;35m\]"
    local CYAN="\[\033[0;36m\]"
    local LIGHT_CYAN="\[\033[1;36m\]"
    local LIGHT_GRAY="\[\033[0;37m\]"

    case $TERM in
        xterm*)
            local TITLEBAR='\[\033]0;\w (\h)\007\]'
            ;;
        *)
            local TITLEBAR=''
            ;;
    esac

    PS1="\h:\W\$(__git_ps1)% ${DEFAULT}"
    PS2='> '
    PS4='+ '
}

if [ "$PS1" ]; then
    # Set prompt and terminal title.
    proml
    export PS1 PS2 PS4
    unset proml

    PROMPT_COMMAND="history -a"  # update .bash_history after every command
fi

if ! type -t __git_ps1 >/dev/null; then
    __git_ps1()
    {
        local b="$(git symbolic-ref HEAD 2>/dev/null)";
        if [ -n "$b" ]; then
            printf " (%s)" "${b##refs/heads/}";
        fi
    }
fi

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
