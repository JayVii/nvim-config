" Smart Tab-Complete
function! Smart_TabComplete()
    let line = getline('.')                    " current line
    let substr = strpart(line, -1, col('.')+1) " from the start of the current
                                           " line to one character right
                                           " of the cursor
    let substr = matchstr(substr, "[^ \t]*$")  " word till cursor
    if (strlen(substr)==0)                    " nothing to match on empty string
        return "\<tab>"
    endif
    let has_slash = match(substr, '\/') != -1  " position of slash, if any
    if ( has_slash )
        return "\<C-X>\<C-F>"                    " file matching
    else
        return "\<C-X>\<C-O>"                    " plugin matching
    endif
endfunction

" Footnotes
function! Footnote()
    execute "normal ma"
    let footNoteText = input("enter text for footnote: ")
    if exists("b:vimfootnotenumber")
        let b:vimfootnotenumber = b:vimfootnotenumber + 1
    let cr = ""
    else
        let b:vimfootnotenumber = 1
        let cr = "\<CR>"
    endif
    let b:pos = line('.').' | normal! '.virtcol('.').'|'.'4l'
    exe "normal a[".b:vimfootnotenumber."]\<Esc>G"
    exe "normal o".cr."[".b:vimfootnotenumber."] " . footNoteText
    execute "normal `a"
endfunction
command FN :call Footnote()

function Contacts()
    silent ! bash -c /home/jan/Develop/bin/contacts_vcard &
endfunction
command Adr :call Contacts()

" Spellcheck DE
command SCde :setlocal spell spelllang=de

" Spellcheck EN
command SCen :setlocal spell spelllang=en_gb

" Spellcheck off
command SCoff :setlocal nospell spelllang=

" Fix Spellchecker
command SCfix :syntax spell toplevel

"Count Words and characters
command Count :w !wc -m -w

" switch top/bottom or left/right split
command Rotate :wincmd r

" Save as Root
function SaveAsRoot()
    w !sudo tee "%"
    e! "%"
endfunction
command Wroot :call SaveAsRoot()
command W w "workaround to make 'W' not autocomplete to SaveAsRoot()

" Translate
function Translate()
    '<,'>w !deepl translate -t "DE"
endfunction

function R_split(direction)
    split term://R
    let g:r_job_id = b:terminal_job_id
    hide
    let b:slime_config={'jobid': g:r_job_id}
    unhide
    if a:direction == "vsplit"
        wincmd j
        botright vsplit
        wincmd h
        hide
    endif
endfunction
command R :call R_split("split")

function Hide_term()
    let g:hidden_term_name = @%
    hide
endfunction
function Unhide_term(split)
    if a:split == "vsplit"
        execute 'vsplit' g:hidden_term_name
    endif
    if a:split == "split"
        execute 'split' g:hidden_term_name
    endif
    if a:split == ""
        execute g:hidden_term_name
    endif
    let g:hidden_term_name = ""
endfunction
command HideTerm :call Hide_term()
command UnhideTerm :call Unhide_term("split")
    
function Close_buffer_and_window()
    bdelete
    silent ! xkill -id $(xdotool getactivewindow)
endfunction
command Quit :call Close_buffer_and_window()
command Q :call quit

"command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', "<args>") |
"   \let g:Guifont="<args>"
