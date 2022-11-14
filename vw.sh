#! /bin/bash
str="$*"
if [ $# -eq 0 ]
then
  lvim ~/vimwiki +"lua require('telescope.builtin').find_files({ cwd = '~/vimwiki/', prompt_title = 'Search VimWiki...'})"
else
  lvim ~/vimwiki +"lua require('telescope.builtin').live_grep({ cwd = '~/vimwiki/', default_text = '$str'})"
fi
