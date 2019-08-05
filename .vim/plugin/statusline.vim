" Title:  Vim statusline configuration
" Author: Vincevrp | github.com/Vincevrp
" Note:   Colors are defined in vimrc

" Functions {{{
let s:modemap = {
    \ 'n': 'N',
    \ 'i': 'I',
    \ 'R': 'R',
    \ 'c': 'C',
    \ 't': 'T',
    \ 's': 'S', 'S': 'S-L', "\<C-s>": 'S-B',
    \ 'v': 'V','V': 'V-L', "\<C-v>": 'V-B',
    \ }

function! Statusline_Mode() abort
    return get(s:modemap, mode(), '')
endfun

function! Statusline_Whitespace() abort
    return len(filter(getline(1,'$'), 'v:val =~ "\\s$"')) > 0 ? " • " : ""
endfun

function! Statusline_Lint(type) abort
    let l:counts   = ale#statusline#Count(bufnr(''))
    let l:errors   = l:counts.error + l:counts.style_error
    let l:warnings = l:counts.total - l:errors

    if a:type =~ 'warn'
        return l:warnings == 0 ? '' : printf("%d \uf12a  ", warnings)
    elseif a:type =~ 'error'
        return l:errors   == 0 ? '' : printf("%d \uf00d  ", errors)
    endif
endfun
" }}}

" Autocommands {{{
augroup QFLine
    autocmd Filetype qf setlocal statusline=%#Bold#\ Quickfix%=[%L]
augroup END
" }}}

" Statusline {{{
set statusline=                             " Empty statusline

set statusline+=%#SLnm#                     " Set color
set statusline+=\ %{Statusline_Mode()}\     " Display mode

set statusline+=%#Bold#                     " Set bold
set statusline+=%6{&paste?'PASTE':''}       " Paste
set statusline+=\ %n\                       " Buffer number
set statusline+=%#LineNr#                   " Set color
set statusline+=%2f                         " Filename

set statusline+=%=                          " Align right
set statusline+=%#Bold#                     " Set color
set statusline+=\ %l:%c/%L                  " Line, column, total
set statusline+=\ \ %{&fileformat}\        " File format

set statusline+=%#SLWarn#                   " Set color
set statusline+=%{Statusline_Lint('warn')}  " Show warnings

set statusline+=%#SLErr#                    " Set color
set statusline+=%{Statusline_Lint('error')} " Show errors
set statusline+=%{Statusline_Whitespace()}  " Show trailing whitespace
" }}}

" Tabline {{{
" See :help setting-tabline
set tabline=%!MyTabLine()
function! MyTabLine() abort
    let s = ''
    for i in range(tabpagenr('$'))
        " Select highlighting
        if i + 1 == tabpagenr()
            let s .= '%#TabLineSel#'
        else
            let s .= '%#TabLine#'
        endif

        " The label
        let bufname = bufname(tabpagebuflist(i+1)[tabpagewinnr(i+1) - 1])
        let name    = len(bufname) > 0 ? pathshorten(bufname) : 'NEW'
        let s .= ' ' . name . ' '
    endfor

    return s
endfunction
" }}}
