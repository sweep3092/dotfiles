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

call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

let g:committia_hooks = {}
function! g:committia_hooks.edit_open(info)
  setlocal spell

  imap <buffer><C-d> <Plug>(committia-scroll-diff-down-half)
  imap <buffer><C-u> <Plug>(committia-scroll-diff-up-half)
  nmap <buffer><C-d> <Plug>(committia-scroll-diff-down-half)
  nmap <buffer><C-u> <Plug>(committia-scroll-diff-up-half)
endfunction


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
set autoindent
set ts=2
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set showmatch
set smartindent
set paste

"- View
syntax on
set number
set wrap
set laststatus=2
set showcmd
set t_Co=256
