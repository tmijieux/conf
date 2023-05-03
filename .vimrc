set pastetoggle=<F2>
set nocompatible
filetype indent plugin on
syntax on
set showcmd
set hlsearch
set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab
set number
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g`\"" | endif
endif
