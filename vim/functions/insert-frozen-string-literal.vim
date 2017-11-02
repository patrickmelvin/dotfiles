function! FrozenStringLiteral()
  normal! ggi# frozen_string_literal: true
endfunction
nmap <leader>fs :call FrozenStringLiteral()<CR>
