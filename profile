
# Local bin & Homebrew
PATH=/usr/local/sbin:~/bin:/usr/local/bin:$PATH
export PATH

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
alias chrv='chruby `cat .ruby-version`'

# Bundler Commands
alias bx='bundle exec'
alias bxr='bundle exec rspec'

# default to ruby 2.1
chruby 2.1

if [ "$PS1" ]; then
  export HISTCONTROL=ignoredups
  export HISTSIZE=1000000
fi

export EDITOR="vi"

source ~/bin/clone_project.sh
source ~/bin/edit_hosts.sh
source ~/bin/jump_to_project.sh
source ~/bin/proml.sh

