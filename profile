
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

if [ "$PS1" ]; then
  export HISTCONTROL=ignoredups
  export HISTSIZE=1000000
fi

export EDITOR="vi"

# Brew bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

source ~/Projects/dotfiles/bin/jump_to_project.sh
source ~/Projects/dotfiles/bin/proml.sh

