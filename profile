
# Local bin & Homebrew
PATH=/usr/local/sbin:~/bin:/usr/local/bin:$PATH
export PATH

# chruby
# Setup chruby
#
latest_installed_ruby()
{
  /bin/ls -1 -d ~/.rubies/ruby-* | tail -n 1 | xargs basename
}

if command -v chruby-exec > /dev/null; then
  source /usr/local/share/chruby/chruby.sh
  chruby $(latest_installed_ruby)
  source /usr/local/share/chruby/auto.sh
fi

# Bundler Commands
alias bx='bundle exec'
alias bxr='bundle exec rspec'

if [ "$PS1" ]; then
  export HISTCONTROL=ignoredups
  export HISTSIZE=1000000
fi

export EDITOR="nvim"

# Brew bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

source ~/Projects/dotfiles/bin/jump_to_project.sh
source ~/Projects/dotfiles/bin/proml.sh
