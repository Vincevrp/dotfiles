" Commands and abbreviations

" Write as sudo
command! W execute ":w !sudo tee %"

" Open help in new tab
cabbrev help tab help

" Loop back to beginning for cnext and cprev
command! Cnext try | cnext | catch | cfirst | catch | endtry
command! Cprev try | cprev | catch | clast  | catch | endtry

cabbrev cnext Cnext
cabbrev cn    Cnext
cabbrev cprev Cprev
cabbrev cp    Cprev
