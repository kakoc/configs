call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim',{'tag':'v1.6'}

Plug 'bling/vim-airline'

Plug 'vim-scripts/vim-auto-save'

Plug 'jiangmiao/auto-pairs'

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-surround'

Plug 'vim-syntastic/syntastic' 

"Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'

"Plug 'christoomey/vim-tmux-navigator'
call plug#end()


:imap jj <Esc>
map <C-n> :NERDTreeToggle<CR>

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key, '[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction

let g:auto_save=1

syntax on
"colorscheme gruvbox
colorscheme jellybeans
set background=dark
set t_Co=256
"let g:javascript_plugin_jsdoc = 1

set cursorline
set noshowmode

set number
set expandtab
set tabstop=2
set shiftwidth=2
set hlsearch
set incsearch
set autoindent
set statusline+=%#warningmsg#
"map for shift and down lines
noremap <C-b> :m .+1<CR>==
noremap <C-t> :m .-2<CR>==

let g:syntastic_cpp_compiler = 'clang'
let g:sytastic_cpp_checkers = ['clang_check', 'gcc']
let g:ycm_collect_identifiers_from_tags_files = 1
let g:syntastic_cpp_compiler_options = ' -std=c++14'
let g:syntastic_cpp_include_dirs = ['/Users/kakoc/study/C++/lib/include/', 'include']
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_config_file = '/Users/kakoc/.syntastic_config'
let g:syntastic_cpp_cflags = '-I/Users/kakoc/study/C++/lib/include'
let g:syntastic_cpp_remove_include_errors = 0
let g:loaded_youcompleteme = 1
let g:ycm_global_ycm_extra_conf = '/Users/kakoc/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
