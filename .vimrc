set nocompatible

filetype off

filetype plugin indent on 

syntax enable

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ruler
set cursorline
set showmatch

" Strip traiiling characters 
autocmd BufWritePre *.py,*.js,*.css,*.html,*.tpl :%s/\s\+S//e

" <F2> maps to toggle paste/no-paste mode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Indent shouldnt lose block selections
vnoremap < <gv
vnoremap > >gv

" imppdb -> import pdb ; pdb.set_trace()
ab imppdb import pdb;pdb.set_trace()
