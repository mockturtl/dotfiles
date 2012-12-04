runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

syntax on
set background=dark
setl tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set autoindent
filetype plugin indent on
set number
set ruler
set hlsearch
set wildmenu
set wildmode=list:longest,full
set showbreak=↪
set hidden
set title

" navigation ignores line wrap
nmap j gj
nmap k gk

let mapleader = ","

" save: needs `stty -ixon` for bash
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>i

" esc
imap jj <Esc>

" toggle line numbers
nmap <C-N><C-N> :set invnumber<CR>

" toggle paste with indents
nnoremap <leader>p :set invpaste paste?<CR>

nnoremap <leader>a :AutoCloseToggle<CR>
