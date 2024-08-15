#!/usr/bin/env zsh

##
# FZF
#

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Setting fd/fdfind as default source for fzf (w/o pipe)
if type fdfind &>/dev/null; then
  export FZF_DEFAULT_COMMAND='fdfind --type f'
elif type fd &>/dev/null; then
  export FZF_DEFAULT_COMMAND='fd --type f'
else
  export FZF_DEFAULT_COMMAND='find . -type f'
fi

# If in git repo, CTRL-T searches git files
if git rev-parse --is-inside-work-tree &>/dev/null; then
  export FZF_CTRL_T_COMMAND='git ls-files'
else
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi
