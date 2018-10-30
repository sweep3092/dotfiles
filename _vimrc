"--- vimrc ---"

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'rhysd/committia.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'haya14busa/incsearch.vim'
NeoBundle 'altercation/vim-colors-solarized' 
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'kchmck/vim-coffee-script'

call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
NeoBundleCheck

let g:committia_hooks = {}
function! g:committia_hooks.edit_open(info)
  setlocal spell

  imap <buffer><C-d> <Plug>(committia-scroll-diff-down-half)
  imap <buffer><C-u> <Plug>(committia-scroll-diff-up-half)
  nmap <buffer><C-d> <Plug>(committia-scroll-diff-down-half)
  nmap <buffer><C-u> <Plug>(committia-scroll-diff-up-half)
endfunction

map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

"set background=dark
"colorscheme solarized


let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'


"-------------------------
" End Neobundle Settings.
"-------------------------


"- General
set nocompatible

"- File Encode
set encoding=utf-8
set fileencodings=utf-8,euc-jp,cp932

"- Behavior
"-- General behavior
set backspace=indent,eol,start
set nobackup
set writebackup

"-- Editor behavior
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set autoindent
set showmatch
"set paste

"- View
syntax on
syntax enable
set number
set wrap
set laststatus=2
set showcmd
set t_Co=256
set cursorline
set cursorcolumn
