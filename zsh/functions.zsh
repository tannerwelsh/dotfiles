##
## CUSTOM FUNCTIONS
##


# Capture/grab STDOUT for reuse
# Thanks to https://stackoverflow.com/a/58598185
#
# Example:
#
# $ find . -name 'filename' | cap
# /path/to/filename

# $ ret
# /path/to/filename

# capture the output of a command so it can be retrieved with ret
cap () { tee /tmp/capture.out}

# return the output of the most recent command that was captured by cap
ret () { cat /tmp/capture.out }


# Pretty CSV
# Thanks to https://www.stefaanlippens.net/pretty-csv.html
#
# Example:
#
# $ pretty_csv data.csv
#
# $ cat data.csv | pretty_csv
function pretty_csv {
  perl -pe 's/((?<=,)|(?<=^)),/ ,/g;' "$@" | column -t -s, | less  -F -S -X -K
}

# List all 256 colors in terminal
colors256 () {
  for i in {0..255}; do echo -e "\033[38;5;${i}mColor $i"; done
}

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

# Toggle theme mode for prompt colors
toggle_theme() {
  if [[ "$THEME_MODE" == "light" ]]; then
    export THEME_MODE="dark"
    echo "Switched to dark theme"
  else
    export THEME_MODE="light"
    echo "Switched to light theme"
  fi

  # Reload the prompt to apply new colors
  autoload -Uz simple_prompt; simple_prompt
}

# Set theme mode explicitly
set_theme() {
  if [[ "$1" == "light" ]] || [[ "$1" == "dark" ]]; then
    export THEME_MODE="$1"
    echo "Theme set to $1"
    # Reload the prompt to apply new colors
    autoload -Uz simple_prompt; simple_prompt
  else
    echo "Usage: set_theme [light|dark]"
    echo "Current theme: ${THEME_MODE:-auto}"
  fi
}
