# HELP

General tips and keyboard commands for common tools.

## Tmux

- Config: ~/.tmux.conf
- Prefix: Ctrl-A
- Enter command: Ctrl-A :
- Hotkeys: Ctrl-A ?
- Commands: Ctrl-A :list-commands

## Vim

### Find-Replace

1. Make selection using `/` command (can use regexp)
2. Replace with `:%s//newstring/g` (the empty first argument uses the last highlight by default)
