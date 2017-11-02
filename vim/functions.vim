let vimfunctions = '~/.vim/functions'
let uname = system("uname -s")

for fpath in split(globpath(vimfunctions, '*.vim'), '\n')

  if (fpath == expand(vimfunctions) . "/yadr-keymap-mac.vim") && uname[:4] ==? "linux"
    continue " skip mac mappings for linux
  endif

  if (fpath == expand(vimfunctions) . "/yadr-keymap-linux.vim") && uname[:4] !=? "linux"
    continue " skip linux mappings for mac
  endif

  exe 'source' fpath
endfor
