set number
set nocompatible
syntax on
set showmode
set showcmd
set mouse=a
set encoding=utf-8
set t_Co=256
filetype indent on
set autoindent
set tabstop=4
set expandtab
set softtabstop=4
set cursorline
set cursorcolumn
set textwidth=200
set wrap
set ruler
set showmatch
set hlsearch
set incsearch
set history=1000
set autoread
set wildmenu
set wildmode=longest:list,full
syntax enable
set background=dark
colorscheme molokai
set guifont=Monospace\ 14
"map <F5> :w<cr>:!python %<cr> 
"run python script with F5
function CheckPythonSyntax()
    let mp = &makeprg
    let ef = &errorformat
    let exeFile = expand("%:t")
    setlocal makeprg=python\ -u
    set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
    silent make %
    copen
    let &makeprg     = mp
    let &errorformat = ef
endfunction
map <F5> :call CheckPythonSyntax()<CR>


map <F5> :call CheckPythonSyntax()<CR>
