" Title: Vim lightline configuration
" Author: Vincevrp | github.com/Vincevrp

let g:lightline = {
    \   'colorscheme': 'nord',
    \   'active': {
    \   'left': [
    \       [ 'mode', 'paste' ],
    \       [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
    \   'right': [
    \       ['trailing'],
    \       [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ],
    \       [ 'lineinfo', 'fileformat' ] ]
    \   },
    \   'component': {
    \     'lineinfo': '%l:%v/%L'
    \   },
    \   'component_function': {
    \     'gitbranch': 'fugitive#head'
    \   }
    \ }
let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = { 'left': '', 'right': '' }
let g:lightline.tabline_separator = { 'left': '', 'right': '' }
let g:lightline.tabline_subseparator = { 'left': '', 'right': '' }
let g:lightline.component_expand = {
    \   'linter_checking': 'lightline#ale#checking',
    \   'linter_warnings': 'lightline#ale#warnings',
    \   'linter_errors': 'lightline#ale#errors',
    \   'linter_ok': 'lightline#ale#ok',
    \   'trailing': 'lightline#trailing_whitespace#component'
    \ }
let g:lightline.component_type = {
    \   'linter_checking': 'left',
    \   'linter_warnings': 'warning',
    \   'linter_errors': 'error',
    \   'linter_ok': 'left',
    \   'trailing': 'error'
    \ }
let g:lightline#ale#indicator_checking = "\u21c4  "
let g:lightline#ale#indicator_warnings = "\uf071  "
let g:lightline#ale#indicator_errors = "\uf05e  "
let g:lightline#ale#indicator_ok = "OK"
let g:lightline#trailing_whitespace#indicator="•"
