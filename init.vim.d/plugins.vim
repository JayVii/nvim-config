" load plugins, update via :PlugUpdate
call plug#begin()
"" General purpose Plugins
"Plug 'https://github.com/greyblake/vim-preview'
"Plug 'https://github.com/jceb/vim-orgmode'
"Plug 'https://github.com/motemen/git-vim'
"Plug 'https://github.com/jalvesaq/Nvim-R'
Plug 'https://github.com/jamessan/vim-gnupg'
Plug 'https://github.com/coldfix/hexHighlight'
Plug 'https://github.com/lilydjwg/colorizer'
"Plug 'https://github.com/Valloric/YouCompleteMe'
"Plug 'https://github.com/itchyny/calendar.vim' " Does no .ics import
"Plug 'https://github.com/mattn/calendar-vim'
Plug 'https://github.com/jpalardy/vim-slime'
Plug 'https://github.com/autozimu/LanguageClient-neovim', {
  \ 'branch': 'next',
  \ 'do': 'bash install.sh' }
"Plug 'https://github.com/ervandew/supertab'
"Plug 'https://github.com/w0rp/ale'
"Plug 'https://github.com/lifepillar/vim-mucomplete'
"Plug 'roxma/nvim-completion-manager'
"Plug 'gaalcaras/ncm-R'
"" Colorschemes
"Plug 'https://github.com/vim-airline/vim-airline'
"Plug 'https://github.com/vim-airline/vim-airline-themes'
"Plug 'https://github.com/croaker/mustang-vim'
"Plug 'https://github.com/AlessandroYorba/Alduin'
"Plug 'https://github.com/AlessandroYorba/Despacio'
"Plug 'https://github.com/AlessandroYorba/Sierra'
"Plug 'https://github.com/AlessandroYorba/Arcadia'
"Plug 'https://github.com/trevordmiller/nova-vim'
"Plug 'https://github.com/josuegaleas/jay'
Plug 'https://github.com/dracula/vim'
Plug 'https://github.com/altercation/vim-colors-solarized'
"Plug 'https://github.com/chriskempson/base16-vim'
Plug 'https://github.com/morhetz/gruvbox'
"Plug 'https://github.com/arcticicestudio/nord-vim'
"Plug 'https://github.com/nightsense/stellarized'
Plug 'https://github.com/ayu-theme/ayu-vim'
Plug 'https://github.com/nightsense/carbonized'
call plug#end()

" Slime
"let g:slime_target = "tmux"
"let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], 
"            \ "target_pane": "nvim:.1"}
let g:slime_target = "neovim"

" LanguageClient
let g:LanguageClient_serverCommands = {
  \ 'r': ['/usr/bin/R', '--quiet', '--slave', '-e', 'languageserver::run()'],
  \ }
let g:LanguageClient_diagnosticsEnable=0
" install in R:
" source("https://install-github.me/REditorSupport/languageserver")
"
