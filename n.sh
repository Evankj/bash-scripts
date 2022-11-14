#! /bin/bash
trim() {
    local var="$*"
    # remove leading whitespace characters
    var="${var#"${var%%[![:space:]]*}"}"
    # remove trailing whitespace characters
    var="${var%"${var##*[![:space:]]}"}"
    echo "$var"
}

title=$(trim $1)
if [ ! -z "$title" ]
then
  title=$(echo "_$title")
fi

d=$(date +"%Y%m%d")

lvim ~/vimwiki/random/"$d$title".md
