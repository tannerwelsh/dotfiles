# Dotfiles

Environment configuration for @tannerwelsh.

Built around @anishathalye's [dotbot](https://github.com/anishathalye/dotbot/).

The main configuration lives in `default.conf.yaml`, and additional machine-specific configurations can be found in additional `*.conf.yaml` files.

## Mac vs Linux

Since this configuration is meant to support both Mac and Linux machines, there are some slight differences.

Most of these can be resolved by installing the platform-specific config (e.g. `mac.conf.yaml`), but some (such as those which affect statically tracked files like `config/gitconfig`) must be handled by using a different branch.

For this, before installing make sure to use the appropriate branch for your platform:

- Mac: https://github.com/tannerwelsh/dotfiles/tree/main-mac

## Installation

1. Clone this repo at `~/.dotfiles` - this ensures that the `DOTFILES_DIR` environment variable is exported correctly.
    ```shell
    $ git clone git@github.com:tannerwelsh/dotfiles.git
    ```

2. Install dependencies: submodules and dependent packages/systems:
  - ZSH
  - [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh/)
  - [Homebrew](https://brew.sh/) \*and for [Linux](https://docs.brew.sh/Homebrew-on-Linux)

3. Run install script for the given machine, e.g. to use `mac.conf.yaml`:
    ```shell
    $ cd dotfiles
    $ ./install -c mac.conf.yaml
    ```

4. Enjoy your new configuration, with dotfiles symlinked into `~/`!

**NOTE**: install only certain sections with the `--only` flag for install (see dotbot docs for more info), e.g. `./install -c mac.conf.yaml --only link`.

Some of the packages installed might need additional configuration to work properly. Known caveats:

### FZF

After running `./install`, install useful keybindings and fuzzy completion for fzf. See instructions with `brew info fzf` (for Mac).

### TMUX / TPM

When first running tmux, the plugins managed by tpm are not installed. To install them, run `prefix + I` (prefix is configured to ctrl-a) from within a tmux session.

## Updating Dependencies

All dependencies are included as Git submodules. To update them, run:

```shell
$ ./update
```

## Helpful Commands

You will find aliases for common commands in `configs/zsh_aliases`, although some may be added through [Oh My ZSH plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins) as well.

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

### ohmyzsh

Framework for managing zsh configuration.
[repo](https://github.com/ohmyzsh/ohmyzsh)

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
