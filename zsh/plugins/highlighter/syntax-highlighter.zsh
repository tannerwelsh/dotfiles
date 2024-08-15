#!/usr/bin/env zsh

# ZSH syntax highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting/
ZSH_HIGHLIGHT_SCRIPT="$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

if [[ -f $ZSH_HIGHLIGHT_SCRIPT ]]; then
  source $ZSH_HIGHLIGHT_SCRIPT

  PLUGIN_DIR="${0:A:h}" # Reference the directory of the script
  source $PLUGIN_DIR/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh
fi
