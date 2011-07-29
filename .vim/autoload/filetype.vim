" local filetype file
" loads various extra filetypes

if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    au! BufRead,BufNewFile *.pde  setfiletype arduino
augroup END 
