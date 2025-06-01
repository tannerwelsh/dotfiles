# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a dotfiles repository built around dotbot for managing environment configuration across Mac and Linux machines. The configuration includes:

- Shell environment (ZSH with custom configuration)
- Neovim configuration (Lua-based with Lazy.nvim)
- Vim configuration
- Terminal emulators (Alacritty, tmux)
- Git configuration and hooks
- Various development tools

## Commands

### Installation & Updates

```bash
# Install dotfiles (from repository root)
./install                       # Install default configuration
./install -c mac.conf.yaml      # Install Mac-specific configuration
./install -c linux.conf.yaml    # Install Linux-specific configuration
./install --only link           # Only create symlinks

# Update dependencies (git submodules)
./update
```

### Shell & Environment

```bash
refresh    # Restart shell with new configuration
dotfiles   # Navigate to dotfiles directory
_alias     # Edit aliases file
```

### Neovim

- `:Lazy` - Open plugin manager to install/update/remove plugins
- `:Mason` - Open LSP manager
- Lua formatting: Uses stylua with 2-space indentation

## Architecture

The repository uses dotbot as its core framework with the following structure:

1. **Configuration Files**: Located in `configs/` directory, symlinked to home directory
2. **Platform-specific configs**: Separate YAML files for Mac (`mac.conf.yaml`) and Linux (`linux.conf.yaml`)
3. **Shell Configuration**:
   - Main entry: `configs/zshrc`
   - OS-specific: `zsh/mac.zsh` and `zsh/linux.zsh`
   - Modular components: aliases, completions, functions in `zsh/`
4. **Neovim Configuration**:
   - Entry point: `configs/nvim/lua/tanner/lazy.lua`
   - Core settings: `configs/nvim/lua/tanner/core/`
   - Plugin configs: `configs/nvim/lua/tanner/plugins/`
5. **Git Hooks**: Template hooks in `git_hooks/` for ctags generation
6. **Submodules**: Dependencies managed as git submodules (dotbot, dotbot-brew, tpm)

## Key Environment Variables

- `DOTFILES_DIR`: Set to `~/.dotfiles`
- `EDITOR`: User's preferred editor
- Platform detection via `$OSTYPE` (darwin* for Mac, linux-gnu* for Linux)