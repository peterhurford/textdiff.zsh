# Textdiff
# Author: Peter Hurford
# http://www.github.com/peterhurford/textdiff.zsh

textdiff() {
  if [[ "$#" -ne 2 ]]; then
    echo "Textdiff expects two text arguments."
  else
    if ! [ -f "~/textdiff-tmp" ]; then
      mkdir ~/textdiff-tmp
    fi
    touch ~/textdiff-tmp/1.txt
    touch ~/textdiff-tmp/2.txt
    echo "$1" > ~/textdiff-tmp/1.txt
    echo "$2" > ~/textdiff-tmp/2.txt
    if [[ "$TEXTDIFF_USE_ICDIFF" -eq 1 ]]; then
      icdiff ~/textdiff-tmp/1.txt ~/textdiff-tmp/2.txt
    else
      diff ~/textdiff-tmp/1.txt ~/textdiff-tmp/2.txt
    fi
    rm -rf ~/textdiff-tmp
  fi
}
