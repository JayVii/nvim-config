" indent-steps
set shiftwidth=4

" width of existing tabs
set tabstop=4

" spaces instead of tabs
set expandtab

" filetype extensions
filetype plugin on
filetype indent off

" enable autoread when edited from outside
set autoread

" enable syntax highlighting
syntax on

" disable soft line-wrap
set nowrap

" disable line-enumberation
set nonumber

" No column marking
set colorcolumn=0
set textwidth=0

" No autowrapping
set formatoptions=jcroql

" No autoindent
set noautoindent
set nocindent

" encoding
set encoding=utf8

" set filetype preference-order
set ffs=unix,dos,mac

" Spell-check
set nospell
set spelllang=

" Auto-complete
set complete+=kspell
set completeopt+=menuone,noselect,longest
set omnifunc=syntaxcomplete#Complete

" ignore case when searching
set ignorecase

" highlight search results
set hlsearch

" show matching brackets
set showmatch

" Persistent undo
try
    set undodir=~/.nvim.undo
    set undofile
catch
endtry

" set working directory to current file
autocmd BufEnter * silent! lcd %:p:h

" use system-clipboard for yanked characters
set clipboard=unnamedplus

" Folding based on markers ("za" to unfold)
set foldmethod=marker
setlocal foldmarker={{{,}}}

" highlight CApital LEtter TYpos
match Todo /\<\u\{2}\l.\{-}\>/

" change text of tmux-window to current opened file
autocmd BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window "
            \ . expand("%:t"))
