" New commands added to vim

" Allows cTags to open a selection in a new tab
:map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" Allows you to visually select word and replace it
:vnoremap <C-r> "hy<Esc>:%s/<C-r>h//gc<left><left><left>

" DiffOrig compares swap file with original side-by-side
:command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
  \ | wincmd p | diffthis
