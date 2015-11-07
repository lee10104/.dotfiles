set autoindent
set smartindent
set ruler
set shiftwidth=2
set nu
set expandtab
set tabstop=2
set background=dark
set backspace=eol,start,indent
set hlsearch
set noswapfile

highlight Search ctermfg=016 ctermbg=226

call plug#begin('~/.vim/plugged')

Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': 'yes \| ./install'}

call plug#end()

let g:seoul256_background = 233

try
  colorscheme seoul256
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme elflord
endtry

set background=dark
