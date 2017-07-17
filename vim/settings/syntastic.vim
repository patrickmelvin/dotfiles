let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
let g:syntastic_always_populate_loc_list = 1

:nmap [c :lprevious<enter>
:nmap ]c :lnext<enter>
