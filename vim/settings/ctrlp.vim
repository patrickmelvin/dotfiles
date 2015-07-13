" Enable ctrlP
hi def link CtrlPMatch CursorLine
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git\|node_modules\|bin\|\.hg\|\.svn\|build\|log\|resources\|coverage\|doc\|tmp\|public/assets\|vendor\|Android',
  \ 'file': '\.jpg$\|\.exe$\|\.so$\|tags$\|\.dll$'
  \ }

nnoremap <C-b> :CtrlPBuffer<cr>
" CtrlP Delete
" call ctrlp_bdelete#init()
" " CtrlP Funky
" let g:ctrlp_extensions = [‘funky']
" let g:ctrlp_funky_multi_buffers = 1
