runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

syntax on
set background=dark
setl tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set autoindent
set autowrite
filetype plugin indent on
set number
set ruler
set hlsearch
set wildmenu
set wildmode=list:longest,full
set showbreak=↪
set hidden
set title
set synmaxcol=128 " see fatih/vim-go#145

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
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

au BufNewFile,BufRead *.go setlocal noexpandtab tabstop=2 shiftwidth=2
au FileType go nmap <Leader>r <Plug>(go-run)
"au FileType go nmap <Leader>b <Plug>(go-build)
au FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
au FileType go nmap <Leader>t <Plug>(go-test)
au FileType go nmap <Leader>cov <Plug>(go-coverage-toggle)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
au Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
au Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
au Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_auto_type_info = 1
"let g:go_auto_sameids = 1   " pending vim 7.4.1304 D:
let g:go_version_warning = 0 " pending vim 7.4.1689 D:

" md
" https://github.com/tpope/vim-markdown/blob/master/README.markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" scm
autocmd filetype lisp,scheme,art setlocal equalprg=scmindent.rkt
let g:niji_dark_colours = [
    \ [ '81', '#5fd7ff'],
    \ [ '99', '#875fff'],
    \ [ '1',  '#dc322f'],
    \ [ '76', '#5fd700'],
    \ [ '3',  '#b58900'],
    \ [ '2',  '#859900'],
    \ [ '6',  '#2aa198'],
    \ [ '4',  '#268bd2'],
    \ ]

" tslime {{{
let g:tslime_ensure_trailing_newlines = 1
let g:tslime_normal_mapping = '<localleader>t'
let g:tslime_visual_mapping = '<localleader>t'
let g:tslime_vars_mapping = '<localleader>T'
" }}}
