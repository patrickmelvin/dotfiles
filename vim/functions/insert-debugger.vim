" Make those debugger statements painfully obvious
function! InsertDebugger()
  if(&filetype == 'ruby')
    :normal orequire 'pry'; binding.pry
  else
    :normal odebugger;
  endif
  :normal ==
endfunction

au BufEnter *.rb syn match error contained "\<binding.pry\>"
au BufEnter *.rb syn match error contained "\<debugger\>"
nmap <leader>dd :call InsertDebugger()<CR>
