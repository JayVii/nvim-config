" Spellcheck
setlocal nospell

" Column-limits
set colorcolumn=81      " color 80th column
set textwidth=80        " set wrapping column
set formatoptions+=t    " enable auto-wrapping
set wrap                " enable softwrap

" Indentation
set smartindent
set cindent

" Completion
set omnifunc=LanguageClient#complete

" Code-Specific Auto-complete
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
"inoremap (      ()<Left>
"inoremap (<CR>  (<CR>)<Esc>O
"inoremap ((     (
"inoremap ()     ()
inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []

" Autoclose quotation
"inoremap '      ''<Left>
"inoremap '<CR>  '<CR>'<Esc>O
"inoremap ''     '
inoremap "      ""<Left>
inoremap "<CR>  "<CR>"<Esc>O
inoremap ""     "
