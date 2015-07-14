" VIM-Rspec
let g:rspec_command = "!bundle exec rspec -I . {spec}"
map <Leader>tf :call RunCurrentSpecFile()<CR>
map <Leader>tt :call RunNearestSpec()<CR>
map <Leader>tl :call RunLastSpec()<CR>
map <Leader>ta :call RunAllSpecs()<CR>
