" Functions and commands

" Set indentation
function! util#SetIndent(num) abort
    execute 'setlocal shiftwidth='.a:num
    execute 'setlocal softtabstop='.a:num
endfun

" LF file explorer
function! util#LF() abort
    let l:file = '/tmp/vim-ranger'
    execute 'silent !lf -selection-path='.l:file
    if filereadable(l:file)
        execute 'edit'.system('<'.l:file.'&& rm '.l:file)
    endif
    redraw!
endfun

" Use appropriate FZF function
function! util#CheckFZF() abort
    let status = system('git rev-parse --is-inside-work-tree')
    execute status =~# 'true' ? 'GFiles' : 'Files'
endfun

" Toggle colorcolumn
function! util#ToggleColorColumn() abort
    execute 'set colorcolumn='. (&colorcolumn ==# '' ? '80' : '')
endfun

" Toggle Quickfix
function! util#ToggleQuickFix() abort
    for i in range(1, winnr('$'))
        if getbufvar(winbufnr(i), '&buftype') ==# 'quickfix'
            cclose
            return
        endif
    endfor

    copen
endfunction

" Remove trailing whitespace
function! util#RemoveTrailingWhitespace() abort
    let l =1
    for line in getline(1, '$')
        call setline(l, substitute(line, '\s\+$', '', 'g'))
        let l = l+1
    endfor
endfunction
