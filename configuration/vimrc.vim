:call pathogen#infect()
:set tabstop=2
:set shiftwidth=2
:set expandtab
:set autoindent
:set smartindent
:command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
  \ | wincmd p | diffthis
