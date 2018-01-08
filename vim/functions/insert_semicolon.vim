function! InsertSemicolon()
  normal! m`$a;
endfunction
nmap <leader>cc :call InsertSemicolon()<CR>
