" New commands added to vim
" TODO *

" Allows cTags to open a selection in a new tab
:map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" DiffOrig compares swap file with original side-by-side
:command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
  \ | wincmd p | diffthis
