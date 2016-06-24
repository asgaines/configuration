set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Custom bundles
Plugin 'scrooloose/nerdtree', { 'on':  'TreeToggle' }
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'scwood/vim-hybrid'
Plugin 'marciomazza/vim-brogrammer-theme'
Plugin 'zandrmartin/vim-distill'
Plugin 'notpratheek/vim-luna'
Plugin 'lanox/lanox-vim-theme'
Plugin 'mhinz/vim-janah'
Plugin 'pkukulak/idle'
Plugin 'easysid/mod8.vim'
Plugin 'geetarista/ego.vim'
Plugin 'kocakosm/hilal'
Plugin 'marcopaganini/termschool-vim-theme'
Plugin 'sickill/vim-monokai'
Plugin 'Valloric/vim-valloric-colorscheme'
Plugin 'joshdick/onedark.vim'
Plugin 'mkarmona/materialbox'
Plugin 'evgenyzinoviev/vim-vendetta'
Plugin 'vim-scripts/twilight256.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'mattn/emmet-vim'
Plugin 'henrik/vim-indexed-search'
Plugin 'nvie/vim-flake8'
Plugin 'craigemery/vim-autotag'
Plugin 'mjbrownie/vim-htmldjango_omnicomplete'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
call vundle#end()

filetype plugin indent on

syntax on

" For searching, ignore case unless specifying capitals
set ignorecase
set smartcase

" Highlight the search results
set hlsearch

" Make `j` and `k` move by line regardless of wrap length
nnoremap j gj
nnoremap k gk

set background=dark
colorscheme hybrid
hi Search cterm=NONE ctermfg=black ctermbg=blue
hi MatchParen cterm=none ctermbg=green ctermfg=blue

" this turns off physical line wrapping (ie: automatic insertion of newlines)
set textwidth=0 wrapmargin=0

" Django template autocompletion
au FileType htmldjango set omnifunc=htmldjangocomplete#CompleteDjango

set number
set hidden " Keeps buffers from being saved each time switched away from
"set tabstop=8 softtabstop=0 expandtab shiftwidth=8 smarttab
set tabstop=4
set shiftwidth=4
set noexpandtab

" Keep Vim from waiting after hitting Esc and entering command
set timeout timeoutlen=3000 ttimeoutlen=100

" Keep buffer of lines between cursor and bottom/top
set scrolloff=3

func! WordProcessorMode() 
  setlocal formatoptions=1 
  setlocal noexpandtab 
  set smartindent
  setlocal spell spelllang=en_us 
  set complete+=s
  set formatprg=par
  setlocal wrap 
  setlocal linebreak 
endfu 

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
cnoreabbrev W w

let g:user_emmet_install_global = 0
autocmd FileType html,css,htmldjango,scss EmmetInstall

" Following for bash-like autocompletion
set wildmode=longest,list,full
set wildmenu

" Easier pasting from clipboard
nnoremap +P "+gP
vnoremap +P "+gP
nnoremap +p "+gp
vnoremap +p "+gp

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Good lord, these are annoying...
set noswapfile

" Keep accidentally hitting F1 from bringing up help menu
nnoremap <F1> <nop>

" vsplit places file on left, split places file underneath; more intuitive
set splitbelow
set splitright

"Settings for ultisnips
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-x>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Settings for Django dev
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
