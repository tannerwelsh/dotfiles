# Dotfiles

Environment configuration for @tannerwelsh.

Built around @anishathalye's [dotbot](https://github.com/anishathalye/dotbot/).

The main configuration lives in `default.conf.yaml`, and additional machine-specific configurations can be found in additional `*.conf.yaml` files.

## Installation

1. Clone this repo at `~/.dotfiles` - this ensures that the `DOTFILES_DIR` environment variable is exported correctly.
    ```shell
    $ git clone git@github.com:tannerwelsh/dotfiles.git
    ```

2. Install dependencies: submodules like ohmyzsh, and dependent packages/systems:
  - ZSH
  - [Homebrew](https://brew.sh/) \*and for [Linux](https://docs.brew.sh/Homebrew-on-Linux)

3. Run install script for the given machine, e.g. to use `mac.conf.yaml`:
    ```shell
    $ cd habitat
    $ ./install mac
    ```

4. Enjoy your new configuration, with dotfiles symlinked into `~/`!

## Updating Dependencies

All dependencies are included as Git submodules. To update them, run:

```shell
$ ./update
```

## Helpful Commands

You will find aliases for common commands in `configs/zsh_aliases`, although some may be added through [Oh My ZSH plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins) as well.

Some useful ones to be aware of:

```shell
$ dotfiles          # => navigate to this directory
$ _alias            # => open zsh_aliases file in $EDITOR
$ refresh           # => re-source ~/.zshrc in shell (to include latest changes)
```

## Additional Tools

There are other tools which you may want to install depending on environment needs.

- [ImageMagick](https://imagemagick.org/) - image processing tool, used by lots of libraries

## Resources

- [dotbot: A tool that bootstraps your dotfiles](https://github.com/anishathalye/dotbot/)
- [GitHub does dotfiles](https://dotfiles.github.io)
