function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction

function! ToggleSnakeCamel(str)
  if a:str =~ '_'
    return substitute(a:str,'\([a-z]\?\)_\([a-z]\)','\1\u\2', 'g')
  endif
  return substitute(a:str,'\([A-Z]\+\)', '_\L\1', 'g')
endfunction

vnoremap ~ y:call setreg('', TwiddleCase(@"), getregtype(''))<CR>gv""Pgv
nnoremap <leader>ñ yiw:call setreg('', ToggleSnakeCamel(@"), getregtype(''))<cr>viw""P
