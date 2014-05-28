
# Local bin & Homebrew
PATH=~/bin:/usr/local/bin:$PATH
export PATH

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# Bundler Commands
alias bx='bundle exec'

# default to ruby 2.1
chruby 2.1

if [ "$PS1" ]; then
  export HISTCONTROL=ignoredups
  export HISTSIZE=10000
fi

export EDITOR="vi"

source ~/bin/clone_project.sh
source ~/bin/edit_hosts.sh
source ~/bin/jump_to_project.sh
source ~/bin/proml.sh

