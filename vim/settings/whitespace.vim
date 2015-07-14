" Strip trailing whitespace on save
let blacklist=['coffee']
autocmd BufWritePre * if index(blacklist, &ft) < 0 | :%s/\s\+$//e

" CTRL + n = remove blank space at the end of lines
nnoremap <silent> <C-n> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
