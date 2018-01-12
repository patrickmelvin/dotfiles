let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
let g:syntastic_always_populate_loc_list = 1

" Help debug syntastic. Set it to the sum of the flags of the traces you want
"     1 - trace general workflow
"     2 - dump location lists
"     4 - trace notifiers
"     8 - trace autocommands
"    16 - dump options
"    32 - trace running of specific checkers
" let g:syntastic_debug = 1

:nmap ññ :lprevious<enter>
:nmap çç :lnext<enter>
:nmap ñç :lopen<enter>
