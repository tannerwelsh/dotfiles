# Vim

As of July 2024, I mostly use Neovim (configured in `config/nvim`) rather than Vim.

However, Vim is still great and so I keep the config around.

## Packages

Vim packages are installed into `vim/pack/` by `scripts/install-vim-plugins` using the pinned revisions in `vim/plugins.lock`. The installer runs automatically from `./install`; run `./update` to refresh the checked-out revisions after updating the lockfile.

The installer is intentionally not a plugin manager. It performs shallow clones on first install, checks out the exact locked commit, and is safe to run repeatedly.
