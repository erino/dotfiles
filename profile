
# Local bin, Homebrew, and govuk-docker
PATH=$(pyenv root)/shims:/usr/local/sbin:~/bin:/usr/local/bin:/usr/local/opt/openjdk/bin:$PATH:~/govuk/govuk-docker/exe
export PATH

# pyenv
eval "$(pyenv init -)"

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
  HISTFILE="$HOME/.zsh_history"
  HISTSIZE=1000000
  SAVEHIST=10000000
  setopt BANG_HIST                 # Treat the '!' character specially during expansion.
  setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
  setopt SHARE_HISTORY             # Share history between all sessions.
  setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
  setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
  setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
  setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
  setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
  setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
  setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
  setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
fi

export EDITOR="nvim"
bindkey -e    # Use emacs-style zsh bindings, setting EDITOR to vim 

# Brew bash completion
#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#  . $(brew --prefix)/etc/bash_completion
#fi

source ~/Projects/dotfiles/bin/jump_to_project.sh
#source ~/Projects/dotfiles/bin/proml.sh

#
function trc() {
tmux rename-window ${PWD//*\//}
}


# Direnv
eval "$(direnv hook zsh)"

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
# fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

