" autocmd vimenter * NERDTree
" autocmd vimenter * if !argc() | NERDTree | endif
let NERDTreeShowHidden=1
nmap <silent><leader>f :NERDTreeToggle<CR>
nmap <silent><leader>n :NERDTreeFind<CR>
