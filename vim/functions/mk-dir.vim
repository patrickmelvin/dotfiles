" Autocommand - If the directory the file is in does not exist, create it
" before writing the file
function! Mkdir()
  if empty(glob('%:h'))
    call mkdir(expand('%:h'), 'p')
  endif
endfunction
:autocmd BufWritePre * :call Mkdir()
