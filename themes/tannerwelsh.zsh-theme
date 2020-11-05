# Tanner Welsh custom ZSH Theme
# Inspiration/code borrowed from Avit, Bureau, themes

# settings
typeset +H _current_dir="%{$fg_bold[blue]%}%3~%{$reset_color%} "
typeset +H _return_status="%(?.%F{green}√.%{$fg_bold[red]%}⍉)%{$reset_color%}"
typeset +H _hist_no="%{$fg[grey]%}%h%{$reset_color%}"

PROMPT='
$(_user_host)${_current_dir} $(git_prompt_info) %(1j.[bg jobs: %j].)
%{%(!.%F{red}.%F{white})%}▶%{$reset_color%} '

PROMPT2='%{%(!.%F{red}.%F{white})%}◀%{$reset_color%} '

RPROMPT='$(vi_mode_prompt_info)%{$(echotc UP 1)%}$(_try_ruby_prompt) $(_try_nvm_prompt) $(git_prompt_status) ${_return_status}%{$(echotc DO 1)%}'

# True if in a Ruby project (where rbenv local returns the local version)
function _try_ruby_prompt() {
  if $(rbenv local &> /dev/null); then
    echo $(ruby_prompt_info)
  fi
}

# True if in a Node.js project (where nvm use finds a valid version)
function _try_nvm_prompt() {
  if $(nvm_rc_version &> /dev/null); then
    echo $(nvm_prompt_info)
  fi
}

function _user_host() {
  local me
  if [[ -n $SSH_CONNECTION ]]; then
    me="%n@%m"
  elif [[ $LOGNAME != $USER ]]; then
    me="%n"
  fi
  if [[ -n $me ]]; then
    echo "%{$fg[cyan]%}$me%{$reset_color%}:"
  fi
}

MODE_INDICATOR="%{$fg_bold[yellow]%}❮%{$reset_color%}%{$fg[yellow]%}❮❮%{$reset_color%}"

# Git prompt settings
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚ "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}⚑ "
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖ "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}▴ "
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[cyan]%}§ "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[white]%}◒ "

# Ruby prompt settings
ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[red]%}ruby "
ZSH_THEME_RUBY_PROMPT_SUFFIX="%{$reset_color%}"

# NVM prompt settings
ZSH_THEME_NVM_PROMPT_PREFIX="%{$fg[green]%}⬡ node "
ZSH_THEME_NVM_PROMPT_SUFFIX="%{$reset_color%}"
