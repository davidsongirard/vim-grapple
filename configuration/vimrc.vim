" Replacement file for vimrc

" Automatically loads all plugins placed in the components/bundle directory
:call pathogen#infect()

" Load other configuration modules
source ~/vim-grapple/configuration/mappings.vim
source ~/vim-grapple/configuration/indenting.vim

:command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
  \ | wincmd p | diffthis
