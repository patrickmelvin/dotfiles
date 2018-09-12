" Strip trailing whitespace on save
function! <SID>StripTrailingWhitespace()
  let blacklist=['coffee']
  let l = line(".")
  let c = line(".")
  if index(blacklist, &ft) < 0
    :%s/\s\+$//e
  endif
  call cursor(l, c)
endfunction

autocmd BufWritePre * :call <SID>StripTrailingWhitespace()

" CTRL + n = remove blank space at the end of lines
nnoremap <silent> <C-n> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
