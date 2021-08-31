set number
set relativenumber
set guicursor=i:block
set noerrorbells
set tabstop=4
set hidden
"set cursorline
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set linebreak
set noswapfile
set incsearch
set scrolloff=10
set sidescrolloff=10
set showtabline=0
set laststatus=2
set noshowmode
syntax on
set nocompatible
filetype plugin on
set nohlsearch
set go+=a
set clipboard=unnamedplus
set confirm
set signcolumn=no
set autoindent
set ft=nasm
set wrap
set nomodeline
set makeprg
" special comments
au! BufEnter *.c syn match specialComment #//.*#  " C files (*.c)
au! BufEnter *.js syn match specialComment #//.*#  " js files (*.js)
au! BufEnter *.py syn match specialComment /#.*/  " Python files (*.py)
hi specialComment ctermfg=red guifg=red

" assembly indent
autocmd BufNewFile,Bufread *.s set ft=asm
autocmd FileType asm call AssemblyConfig() 

function AssemblyConfig()
  setlocal softtabstop=8
  setlocal tabstop=8
  setlocal noexpandtab
  retab
endfunction
