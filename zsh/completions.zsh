#!/usr/bin/env zsh

##
# ZSH Completions
#

##
# BASIC SETUP
#

# Homebrew Shell Completion https://docs.brew.sh/Shell-Completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# Should be called before compinit; loads all compdef files
zmodload zsh/complist

autoload -Uz compinit
compinit

_comp_options+=(globdots) # Make completions work with dotfiles

##
# OPTIONS
#
setopt MENU_COMPLETE        # Automatically highlight first element of completion menu
setopt AUTO_LIST            # Automatically list choices on ambiguous completion.
setopt COMPLETE_IN_WORD     # Complete from both ends of a word.

##
# COMPLETION CUSTOMIZATIONS
#
bindkey -M menuselect '^[[Z' reverse-menu-complete # allow shift-tab to move up

zstyle ':completion:*' menu select # Use a menu to select completion options

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} # Colors for files and directory

zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:*:*:*:descriptions' format '%F{blue}-- %D %d --%f'
zstyle ':completion:*:*:*:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:*:*:*:warnings' format ' %F{red}-- no matches found --%f'

zstyle ':completion:*' group-name '' # Required for completion to be in good groups


##
# TOOLS
#

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
