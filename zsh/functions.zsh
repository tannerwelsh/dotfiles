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
