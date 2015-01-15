"  If you don't understand a setting in here, just type ':h setting'.

" Basic settings
set nocompatible
set number                     " Show line numbers
set ruler                      " Show line and column numbers on status bar
set encoding=utf-8             " Set default encoding to UTF-8
syntax on                      " Switch syntax highlighting on
filetype plugin indent on      " Enable file type detection and do language-dependent indenting.

" Whitespace
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen

" Start pathogen
execute pathogen#infect()

" vim-go configs
" format with goimports instead of gofmt # not sure why this is not working
" let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

" Setup CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
