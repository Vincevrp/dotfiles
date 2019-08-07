" Markdown specific settings

" Call ~/.bin/mdtopdf script on current buffer
function! MD2PDF() abort
    silent call system('mdtopdf ' . expand('%') . ' &')
endfun

nnoremap <silent> <leader>p :call MD2PDF()<CR>
set foldmethod=expr

augroup Markdown
    autocmd BufWritePost *.md call MD2PDF()
augroup END
