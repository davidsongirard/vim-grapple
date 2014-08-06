" New commands added to vim
" TODO *

" Allows cTags to open a selection in a new tab
:map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" Allows you to visually select word and replace it
:vnoremap <C-r> "hy<Esc>:%s/<C-r>h//gc<left><left><left>

" DiffOrig compares swap file with original side-by-side
:command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
  \ | wincmd p | diffthis


function Update_basic()
  if &modified
    write
    call Refresh_firefox()
  endif
endfunction

function! Refresh_firefox()
  silent !echo  'vimYo = content.window.pageYOffset;
        \ tabc = window.getBrowser().tabContainer; 
        \ tabs = tabc.childNodes; 
        \ index = tabc.selectedIndex;
        \ tabc.selectedItem = tabs[0];
        \ vimXo = content.window.pageXOffset;
        \ BrowserReload();
        \ content.window.scrollTo(vimXo,vimYo);
        \ repl.quit();'  |
        \ nc -w 1 localhost 4243 2>&1 > /dev/null
endfunction

function! Update_Sass()
  if &modified
    write
    silent !sass css/main.scss &> css/main.css 
    call Refresh_firefox()
  endif
endfunction

autocmd BufWriteCmd *.html,*.css :call Update_basic()
autocmd BufWriteCMD *.scss :call Update_Sass()
