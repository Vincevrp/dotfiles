" Markdown specific settings

" Vim behaviour
setlocal foldmethod=expr
setlocal concealcursor=

" Functions
" Call ~/.bin/mdtopdf script on current buffer
function! MD2PDF() abort
    silent call system('md2pdf ' . expand('%') . ' &')
endfun

" Autocommands
augroup Markdown
    autocmd!
    autocmd BufWritePost *.md call MD2PDF()
augroup END

" Keybindings
nnoremap <silent> <leader>p :call MD2PDF()<CR>
