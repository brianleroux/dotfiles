
" sometimes arrow keys behave like vi in insert and this fixes it
set nocompatible
set term=builtin_ansi

" quiet pls
set visualbell t_vb=

" turn on line numbers
set number

" syntax highlight
syntax on

" 4 space softabs default
set expandtab
set ts=4
set sw=4

" make backspace more powerful
set backspace=indent,eol,start

" reload whenever this file changes
autocmd! bufwritepost vimrc source ~/.vimrc

" this rather amazing color scheme
colorscheme ir_black

" no swap so many tabs can edit one file
set noswapfile
set ignorecase 
set hlsearch 
set incsearch 
set wildmode=list:longest

" subdue the NERDTree highlighting
hi treeClosable ctermfg=darkgrey
hi treeDirSlash ctermfg=darkgrey
hi treeLink ctermfg=darkgrey
hi treeOpenable ctermfg=darkgrey
hi treePart ctermfg=darkgrey
hi treePartFile ctermfg=darkgrey

" start with NERDTree running in the cwd
"let NERDTreeChDirMode=1
"let autochdir=1
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

" markdown
augroup mkd
  autocmd BufRead *.md  set ai formatoptions=tcroqn2 comments=n:>
augroup END

" ejs
au BufNewFile,BufRead *.ejs setfiletype xml


