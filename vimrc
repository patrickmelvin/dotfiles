set nocompatible              " Must come first because it changes other options.
set nocp
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

so ~/.vim/plugins.vim

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

set t_Co=256
set background=dark
colorscheme gruvbox

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set incsearch                     " Show match when typing
set hlsearch                      " Highlight all search matches
set laststatus=2                  " Always show status bar
set lazyredraw                    " Dont redraw between macros
set timeoutlen=500                " Time to wait for second key press

set backspace=indent,eol,start    " Intuitive backspacing.
set foldmethod=manual

set number                        " Enable numbers
set hidden                        " Unsaved changes to buffer. :ls to see buffers. :b[n] to switch buffer
set autoindent

set wrap                          " Turn on line wrapping.
:au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>120v.\+', -1) " Highlight error if line over 120 characters

" Do I want to keep these? Or should I let vim handle backups?
set nobackup
"set backup
"set backupdir=~/.vim/backup
set noswapfile

set pastetoggle=<F2>

set clipboard+=unnamed           " Use system clipboard
noremap ; :
noremap j gj
noremap k gk
set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs
set nocursorcolumn
set nocursorline
set ai
set ts=2
set softtabstop=2
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

" Set default options for :Ack
let g:ack_default_options = " -i -s --ignore-file=ext:log"

" Set wrapping on gitcommit messages to 72 characters
au Filetype gitcommit set tw=72

" Tab completion options
" (only complete to the longest unambiguous match, and show a menu)
set completeopt=longest,menu
set wildmode=list:longest,list:full
set complete=.,t

set showmatch "show matching brackets

set list                         " display whitespace
" Set line endings to show as ¬ instead of $ when viewing in :set list mode
set lcs=eol:¬

" Map leader to ,
map , \
set timeoutlen=2000

" Set file type to Ruby for common files such as ui files and Gemfiles
au BufRead,BufNewFile *.ui set filetype=ruby
au BufRead,BufNewFile *.mustache set filetype=javascript
au BufNewFile,BufRead *.ctp set filetype=html
au BufNewFile,BufRead Gemfile set filetype=ruby
au BufNewFile,BufRead Rakefile set filetype=ruby
au BufNewFile,BufRead Fudgefile set filetype=ruby

" Macros
" Insert class-scoped counter
let @c='i@@count ||= 1oRails.logger.error("************************************************")yyoRails.logger.error(@@count)po@@count += 1'

" Autocommand - If the directory the file is in does not exist, create it
" before writing the file
function Mkdir()
  if empty(glob('%:h'))
    call mkdir(expand('%:h'), 'p')
  endif
endfunction

:autocmd BufWritePre * :call Mkdir()

function! InsertDebugger()
  if(&filetype == 'ruby')
    :normal orequire 'pry'; binding.pry
  else
    :normal odebugger;
  endif
  :normal ==
endfunction

function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction

function! ConvertRspec()
  if(&filetype == 'ruby')
    " it { should == ... } => it { is_expected.to eq(...) }
    :%s/^\(\s*it.*{\s\=\)should == \(.\+\)\(\s*}\)/\1is_expected.to eq(\2)\3/ge
    :%s/^\(\s*it.*{\s\=\)should/\1is_expected.to/ge

    " [statement].should  =>  expect([statement]).to
    :%s/^\(\s*\)\(.\+\)\.should/\1expect(\2).to/ge

    " [statement.stub  =>  allow([statement]).to receive
    :%s/^\(\s*\)\(.\+\)\.stub/\1allow(\2).to receive/ge

    " expect([statement]).to == ...  =>  expect([statement]).to eq(...)
    :%s/\(expect.\+\.to \)== \(.\+\)/\1eq(\2)/ge

    " expect([statement]).to_receive  =>  expect([statement]).to receive
    :%s/\(expect.\+\.to\)_\(receive\)/\1 \2/ge

    " allow([statement]).to receive_chain  =>  allow([statement]).to receive_message_chain
    :%s/\(allow.\+\.to receive_\)chain/\1message_chain/ge

    " expect([statment]).to eq {...}  ==>  expect([statement]).to eq({...})
    :%s/\(expect.\+\.to eq\) \({.\+}\)/\1(\2)/ge

    " expect[statement].any_instance  =>  expect_any_instance_of[statement]
    :%s/\(expect\)\(.\+\).any_instance\(.\+\)/\1_any_instance_of\2\3/ge

    " allow[statement].any_instance  =>  allow_any_instance_of[statement]
    :%s/\(allow\)\(.\+\).any_instance\(.\+\)/\1_any_instance_of\2\3/ge
  endif
endfunction

com! DiffSaved call s:DiffWithSaved()

so ~/.vim/settings.vim
