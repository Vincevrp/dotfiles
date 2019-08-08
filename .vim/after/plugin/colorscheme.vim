" Nord colorscheme
let g:nord_italic=1
let g:nord_italic_comments=1
let g:nord_uniform_diff_background=1

" Custom colors
augroup Colorscheme
    autocmd!
    autocmd ColorScheme *
                \ highlight SLnm                ctermfg=0 ctermbg=4     |
                \ highlight SLWarn              ctermfg=3 ctermbg=NONE  |
                \ highlight SLErr               ctermfg=1 ctermbg=NONE  |
                \ highlight TabLine             ctermfg=8 ctermbg=NONE  |
                \ highlight TabLineSel          ctermfg=5 ctermbg=NONE  |
                \ highlight ALEErrorSign        ctermfg=1 cterm=bold    |
                \ highlight ALEWarningSign      ctermfg=3 cterm=bold    |
                \ highlight Sneak               ctermfg=7 ctermbg=5     |
augroup END

colorscheme nord
