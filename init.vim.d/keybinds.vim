" Remap quit to buffer-delete
cnoreabbrev <expr> q getcmdtype() == ":" && getcmdline() == 'q' ? 'bd' : 'q'

" Leave :term with ESC
tnoremap <Esc> <C-\><C-n>

" Change Window in Terminal immediately
tnoremap <C-w><C-w> <ESC><C-w><C-wA>

" switch between tiled buffers (ctrl + arrowkeys)
"nmap <silent> <C-Up> :wincmd k<CR>
"nmap <silent> <C-Down> :wincmd j<CR>
"nnoremap <silent> <C-Left> :wincmd h<CR>
"nnoremap <silent> <C-Right> :wincmd l<CR>

" Emacs-like binds
"" End of Line
imap <silent> <C-e> <ESC><S-a>
nnoremap <silent> <C-e> <S-a><ESC>
vmap <silent> <C-e> $
"" Beginning of line
imap <silent> <C-a> <Left><ESC><S-i>
nnoremap <silent> <C-a> <S-i><ESC>
vmap <silent> <C-a> 0
"" Search
nnoremap <silent> <C-s> /
nnoremap <silent> <C-r> ?
"" Delete Line from position onwards
nnoremap <silent> <C-k> lv$x
inoremap <silent> <C-k> <ESC>lv$xa

" Text-wrap
" (set mark 'z', re-wrap current paragraph, jump to mark 'z')
nmap <C-q> mz{gq}'z
imap <C-q> <ESC><C-q>
vmap <C-q> <ESC>`<gq`>

" Smart Tab Complete
"inoremap <tab> <c-r>=Smart_TabComplete()<CR>
