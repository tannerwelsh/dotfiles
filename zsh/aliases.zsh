#!/usr/bin/env zsh

# Open this file to edit anytime
alias _alias="$EDITOR $0:A" # $0:A is ref to current script in ZSH

##
## General
##

# Go to ./dotfiles
alias dotfiles="cd $DOTFILES_DIR"

# Open ~/.dotfiles/HELP.md
alias help="$EDITOR $DOTFILES_DIR/HELP.md"

# Allow aliases to be with sudo
alias sudo="sudo "

# Start a fresh shell
# Don't source .zshrc because that is bad
# https://github.com/ohmyzsh/ohmyzsh/wiki/FAQ#how-do-i-reload-the-zshrc-file
alias refresh="exec zsh"

# Copy my public key to the pasteboard
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | printf '=> Public key copied to pasteboard.\n'"

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

# ZSH
alias zshconfig="$EDITOR ~/.zshrc"

# Show hardware metrics using gotop
alias sysstats="gotop"

# Show OS, hardware info
alias sysinfo="neofetch"

# Get a timestamp (year to seconds)
alias timestamp="date +%Y%m%d%H%M%S"


##
## File System
##

# Color
alias ls="ls -G"
# Long form no user group, color
alias l="ls -oG"
# List all except . and ..., color, mark file types
alias lsa="ls -AGF"
# List all except . and ..., color, mark file types, long form no user group, file size
alias ll="ls -AGFoh"
# List all except . and ..., color, mark file types, long form no use group, order by last modified, file size
alias lat="ls -AGFoth"

# Concatenate and print content of files (add line numbers)
alias catn="cat -n"


if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  alias fd="fdfind" # keep consistency w/ mac command
fi


# Fuzzy-find files recursively with a preview
alias rbrowse="fd --hidden --exclude 'node_modules' --exclude '.git' |
               fzf --preview='bat --style=numbers --color=always --line-range :500 {}'"

# Convert Title Case to snake_case, e.g. "echo 'Title Case' | title_to_snake"
alias title_to_snake='tr " " "_" | tr "[:upper:]" "[:lower:]"'

# Convert camelCase to snake_case, e.g. "echo 'fooBar' | camel_to_snake"
alias camel_to_snake="sed 's/\([a-z]\)\([A-Z]\)/\1_\2/g;s/^_//' | tr '[:upper:]' '[:lower:]'"

# Rename files. Use in pipe on file lists, e.g. "ls *.png | rename_as_snake_case"
alias rename_as_snake_case='while read file; do mv "$file" $(echo $file | title_to_snake); done'
alias rename_with_spaces='while read file; do mv "$file" "${file//_/ }"; done'


##
## Editing
##

alias editmodified='$EDITOR -p $(git diff --name-only --diff-filter=M HEAD | uniq)'
alias editnew='$EDITOR -p $(git diff --name-only --diff-filter=A HEAD | uniq)'
alias editunstaged='$EDITOR -p $(git diff --name-only --diff-filter=U | uniq)'
alias editunmerged='$EDITOR -p $(git diff --name-only | uniq)'

alias rmswp="rm **/.*.swp" # remove Vim's swp files


##
## Git & GitHub
##

alias g="git"

# Define git aliases in gitconfig, just add short versions
# here. E.g. `git c` (for commit) is aliased to `gc`
for gitalias in $(git config --get-regexp ^alias\. | sed -e 's/^alias\.\([^ ]*\) .*$/\1/'); do
  alias "g$gitalias"="git $gitalias"
done

# Pass search term to look for all commits that match the search term (Regex supported)
# See man page for git-log for usage on -G and -S (only matches when term added/removed)
alias glsearch='git log -p -G'

##
## Network
##

# IP addresses
alias localip="ipconfig getifaddr en1"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
  alias "$method"="lwp-request -m '$method'"
done


##
## Ruby & Rails
##

alias be="bundle exec"
alias beg="bundle exec guard"
alias ber="bundle exec rails"
alias bers="bundle exec rspec"
alias bk="bundle exec rake"
alias bkdc="bundle exec rake db:create"
alias bkdd="bundle exec rake db:drop"
alias bkdr="bundle exec rake db:reset"
alias bkdm="bundle exec rake db:migrate"
alias bkdms="bundle exec rake db:migrate:status"

##
## Node.js, NPM & Yarn
##

alias yw="yarn workspace"
alias ywi="yarn workspaces info"

alias pn="pnpm"
alias pi="pnpm install"
alias pe="pnpm exec"

##
## Misc. Applications
##

# Docker
alias dockerclean='docker system prune -f & docker volume prune -f'

# Claude
alias claude="/Users/tanner/.claude/local/claude"
