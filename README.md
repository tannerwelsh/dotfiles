# Dotfiles

Environment configuration for @tannerwelsh.

Built around @anishathalye's [dotbot](https://github.com/anishathalye/dotbot/).

The main configuration lives in `default.conf.yaml`, and additional machine-specific configurations can be found in additional `*.conf.yaml` files.

## Mac vs Linux

Since this configuration is meant to support both Mac and Linux machines, there are some slight differences.

All platform usage is consolidated on `main`. Differences are resolved by installing the platform-specific config (`mac.conf.yaml` or `linux.conf.yaml`) rather than by switching branches — see [Installation](#installation) below.

**Known limitation**: `configs/gitconfig` is a single statically-linked file shared by both platforms (see `default.conf.yaml`), and it currently hardcodes some Mac-only settings (the `osxkeychain` credential helper and a `/opt/homebrew`-based `gh` credential helper path). Linux users will need to adjust `~/.gitconfig` (e.g. `git config --global credential.helper cache`) after install until this file is made platform-aware.

## Installation

1. Clone this repo at `~/.dotfiles` - this ensures that the `DOTFILES_DIR` environment variable is exported correctly.
    ```shell
    $ git clone git@github.com:tannerwelsh/dotfiles.git
    ```

2. Install dependencies: framework submodules, Vim plugins, and dependent packages/systems:
  - ZSH
  - [Homebrew](https://brew.sh/) \*and for [Linux](https://docs.brew.sh/Homebrew-on-Linux)

3. Run install script for the given machine, e.g. to use `mac.conf.yaml`:
    ```shell
    $ cd dotfiles
    $ ./install -c mac.conf.yaml
    ```

4. Enjoy your new configuration, with dotfiles symlinked into `~/`!

**NOTE**: install only certain sections with the `--only` flag for install (see dotbot docs for more info), e.g. `./install -c mac.conf.yaml --only link`.

Some of the packages installed might need additional configuration to work properly. Known caveats:

### ZSH


#### Context

Used to use oh-my-zsh for zsh configuration, but wanted to get a better feel for setting up zsh and avoid the bloat brought in by having so many packages. So switched to a self-rolled setup with help from https://thevaluable.dev/zsh-install-configure-mouseless/.

### FZF

After running `./install`, install useful keybindings and fuzzy completion for fzf. See instructions with `brew info fzf` (for Mac).

### TMUX / TPM

When first running tmux, the plugins managed by tpm are not installed. To install them, run `prefix + I` (prefix is configured to ctrl-a) from within a tmux session.

## Updating Dependencies

Framework dependencies are included as Git submodules, and Vim plugins are installed from the pinned manifest. To update them, run:

```shell
$ ./update
```

## Helpful Commands

You will find aliases for common commands in `configs/zsh_aliases`.

Some useful ones to be aware of:

```shell
$ dotfiles          # navigate to this directory
$ _alias            # open zsh_aliases file in $EDITOR
$ refresh           # re-source ~/.zshrc in shell (to include latest changes)
```

## Submodules

This tool takes advantage of [git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) to load other dependencies. The full list of submodules can be found in the file `.gitmodules`.

### dotbot

The foundational framework for this project. Provides basic infrastructure for defining the configuration YAML.
[repo](https://github.com/anishathalye/dotbot/)

### dotbot-brew

Dotbot plugin allowing list of Homebrew packages to be defined in config files.
[repo](https://github.com/d12frosted/dotbot-brew)

### tpm

Tmux plugin manager. Self-explanatory.
[repo](https://github.com/tmux-plugins/tpm)

## Additional Tools & Apps

There are other tools which you may want to install depending on environment needs.

- [ImageMagick](https://imagemagick.org/) - image processing tool, used by lots of libraries

Also, some optional apps that you can manually install:

- 1Password
- Descript
- Docker Desktop
- Dropbox
- Figma
- Moom
- Pastebot (Mac)
- Pocket
- Slack
- Spotify
- Todoist
- VS Code (and Insiders edition)
- XCode (Mac)
- Zoom

## Resources

- [dotbot: A tool that bootstraps your dotfiles](https://github.com/anishathalye/dotbot/)
- [GitHub does dotfiles](https://dotfiles.github.io)
