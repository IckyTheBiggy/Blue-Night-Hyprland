"Make Numbers Visible
set number

"Tab Size
set tabstop=4
set shiftwidth=4
set expandtab

"Auto Indent
set autoindent

"Syntax
syntax on

"Mouse Support
set mouse=a

"Make Nvim Use Terminal Colors
set termguicolors
set background=dark

"Control + Backspace Delte The Whole Word Behind
inoremap <C-BS> <C-w>


"Syntax Colors
hi Comment guifg=#6FA5C7
hi String guifg=#6FA5C7
hi Keyword guifg=#182833
hi Type guifg=#65b3e2
hi Function guifg=#72965c
hi Identifier guifg=#65b3e2
hi Constant guifg=#72965c
hi Operator guifg=#72965c
hi Error guifg=#bf616a
hi Special guifg=#487AA3
hi PreProc guifg=#487AA3
hi Statement guifg=#65b3e2
hi Include guifg=#487AA3
hi Number guifg=#ffffff
hi Boolean guifg=#487AA3

"Plugins
call plug#begin('~/.config/nvim/plugins')
    Plug 'https://github.com/vim-airline/vim-airline.git'
    Plug 'https://github.com/preservim/nerdtree.git'
    Plug 'https://github.com/vim-airline/vim-airline-themes.git'
    Plug 'https://github.com/williamboman/mason.nvim.git'
call plug#end()

"Make vim-airline use system colors


"local lspconfig = require('lspconfig')
"lspconfig.clangd.setup{}
