" Replacement file for vimrc

" Automatically loads all plugins placed in the components/bundle directory
call pathogen#infect()

" Essential configurations
syntax on
filetype on
filetype plugin on
filetype indent on

" Load other configuration modules
source ~/vim-grapple/configuration/mappings.vim
source ~/vim-grapple/configuration/indenting.vim
source ~/vim-grapple/configuration/commands.vim
source ~/vim-grapple/configuration/colors.vim
source ~/vim-grapple/configuration/ultisnips.vim
