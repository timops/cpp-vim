" Import ~/.vim/bundle plugins.
execute pathogen#infect()

syntax on
filetype plugin indent on

" Line numbers on by default.
set number

" Use soft tabs (spaces instead of tabs) of two spaces.
set expandtab
set shiftwidth=2
set softtabstop=2

" NERDTree defaults
"autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
map <F2> :NERDTreeToggle <CR>
" If there are no files left except the tree, close it up.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Enable tags for easy navigation.
map <F3> :TagbarToggle <CR>

" Map keys for navigating tabs.
map <S-Left> :tabp <CR>
map <S-Right> :tabn <CR>
" Run make
map <F7> :!make all <CR>

" Perform the beautification.
set cursorline
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
set laststatus=2
hi StatusLine ctermfg=yellow
hi TabLineSel ctermbg=Blue

" instruct delimitMate plugin to move } to separate line after <CR>
autocmd FileType cpp let b:delimitMate_expand_cr = 1

" make ctags work with :tag command
set nocst
