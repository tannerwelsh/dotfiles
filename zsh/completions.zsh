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
# MENU NAVIGATION
#
bindkey -M menuselect '^[[Z' reverse-menu-complete # use SHIFT-TAB to move up

##
# ZSTYLE
#

# Ztyle pattern
# :completion:<function>:<completer>:<command>:<argument>:<tag>
#
zstyle ':completion:*' menu select # Use a menu to select completion options

# Setup a sequence of completion methods.
# 1. first use any custom completion extensions,
# 2. then attempt regular completions,
# 3. finally try to approximate what the user intended to type
zstyle ':completion:*' completer _extensions _complete _approximate

zstyle ':completion:*' group-name '' # Required for completion to be in good groups

##
# ALIAS EXPANSION
#
zstyle ':completion:*' complete true # Complete the alias when _expand_alias is used as a function
zle -C alias-expension complete-word _generic
bindkey '^E' alias-expension # Expand aliases with <CTRL>-E
zstyle ':completion:alias-expension:*' completer _expand_alias

##
# COLORS
#
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} # Colors for files and directory
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:*:*:*:descriptions' format '%F{blue}-- %D %d --%f'
zstyle ':completion:*:*:*:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:*:*:*:warnings' format ' %F{red}-- no matches found --%f'


##
# TOOLS
#

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
