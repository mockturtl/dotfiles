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
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

" toggle paste with indents
nnoremap <leader>p :set invpaste paste?<CR>

nnoremap <leader>a :AutoCloseToggle<CR>

" whitespace
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

" xmpfilter
autocmd FileType ruby nmap <buffer> <F4> <Plug>(xmpfilter-mark)
autocmd FileType ruby xmap <buffer> <F4> <Plug>(xmpfilter-mark)
autocmd FileType ruby imap <buffer> <F4> <Plug>(xmpfilter-mark)

autocmd FileType ruby nmap <buffer> <F5> <Plug>(xmpfilter-run)
autocmd FileType ruby xmap <buffer> <F5> <Plug>(xmpfilter-run)
autocmd FileType ruby imap <buffer> <F5> <Plug>(xmpfilter-run)

" rb
map <Leader>t :w\|!rspec -c spec<cr>
map <Leader>r :w\|!rackup<cr>

" go
" https://github.com/fatih/vim-go#mappings
" see also `:he go-mappings`
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>r <Plug>(go-run)
au FileType go nmap <Leader>b <Plug>(go-build)
au FileType go nmap <Leader>t <Plug>(go-test)
