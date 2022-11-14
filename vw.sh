#! /bin/bash
str="$*"
if [ $# -eq 0 ]
then
  lvim ~/vimwiki +"Telescope find_files cwd=~/vimwiki/"
else
  lvim ~/vimwiki +"Telescope live_grep cwd=~/vimwiki/ default_text=$str"
fi
