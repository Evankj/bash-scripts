#! /bin/bash
# monday=$(date -dmonday +%Y%m%d)
mon=`date -v -Mon "+%Y%m%d"`
file=~/vimwiki/weeks/$mon.md
if [ ! -f $file ]; then
  lvim $file +"0r !~/.vim/bin/generate-vimwiki-week-template '%'"
else
  lvim $file
fi
