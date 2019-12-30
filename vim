call plug#begin('~/.local/share/nvim/plugged')

Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" For async completion
Plug 'Shougo/deoplete.nvim'
" For Denite features
Plug 'Shougo/denite.nvim'

" prettier
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

" material
Plug 'kaicataldo/material.vim'
" 
 " surround
Plug 'tpope/vim-surround'

" easymotion
Plug 'easymotion/vim-easymotion'

" commentary 
Plug 'tpope/vim-commentary'

" ts-syntax
Plug 'leafgarland/typescript-vim'

" autopairs
Plug 'jiangmiao/auto-pairs'

" theme jellybeans
Plug 'nanotech/jellybeans.vim'

" theme base16
" Plug 'chriskempson/base16-vim'

" linter
Plug 'w0rp/ale'

" vsc
Plug 'airblade/vim-gitgutter'

" status line
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'

" icons
Plug 'ryanoasis/vim-devicons'


call plug#end()

let g:deoplete#enable_at_startup = 1

syntax on
set cursorline

" indentation
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set cindent

" prettier
let g:prettier#exec_cmd_async=1
let g:prettier#autoformat=0
let g:prettier#quickfix_enabled=0
autocmd BufWritePre *.js,*.ts,*.tsx,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" leader
let mapleader=" "

" save on <D-s>
" :nnoremap <D-s> :w<kEnter>


" theme jellybeans
" theme base16-atelier-dune
colorscheme jellybeans
set background=dark
set t_Co=256
hi Normal ctermbg=NONE

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

:imap jj <Esc>

" autocomplete, ale
let g:ale_completion_enabled=0
let g:ale_sign_column_always=1

" only lint on save
" let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave=1
" let g:ale_lint_on_save = 0
let g:ale_lint_on_enter=0
let g:ale_virtualtext_cursor=1
let g:ale_lint_delay=1500
" let g:ale_rust_rls_config = {
" 	\ 'rust': {
" 		\ 'all_targets': 1,
" 		\ 'build_on_save': 1,
" 		\ 'clippy_preference': 'on'
" 	\ }
" 	\ }
" let g:ale_rust_rls_toolchain = ''
" let g:ale_linters = {'rust': ['rls']}
" highlight link ALEWarningSign Todo
" highlight link ALEErrorSign WarningMsg
highlight link ALEVirtualTextWarning Todo
highlight link ALEVirtualTextInfo Todo
highlight link ALEVirtualTextError WarningMsg
" highlight ALEError guibg=None
" highlight ALEWarning guibg=None
" let g:ale_sign_error = "✖"
" let g:ale_sign_warning = "⚠"
" let g:ale_sign_info = "i"
" let g:ale_sign_hint = "➤"
" nnoremap <silent> K :ALEHover<CR>
" nnoremap <silent> gd :ALEGoToDefinition<CR><Paste>

" status line
let g:airline_theme='jellybeans'
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#ale#enabled=0
let g:airline#extensions#bookmark#enabled=0
let g:airline#extensions#default#layout = [[ 'a', 'b', 'c' ],[]]
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1
" let g:airline_solarized_bg='dark'


" typescript
let g:nvim_typescript#type_info_on_hold=1
