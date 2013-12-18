
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
