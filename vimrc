execute pathogen#infect()

" General
set shell=/bin/sh
syntax enable
set autoread
set t_Co=256

" Interface
set wildmenu
set wildmode=longest:full
set hidden
set number
set nocompatible
set cmdheight=2
set ttyfast
set smartcase
set hlsearch
set list
set shortmess=atI
set ruler
set listchars=tab:>-,trail:.
set ignorecase
set incsearch
set magic
set mouse=a
set showmatch
set gdefault
set noerrorbells
set completeopt=menuone,longest
set switchbuf=usetab

" Spellcheck
" set spell
" set spelllang=en

" Bundle 'gmarik/vundle'
" Bundle 'kien/ctrlp.vim'
" Bundle 'derekwyatt/vim-scala'
" 
" Bundle 'pangloss/vim-javascript'
" Bundle 'kchmck/vim-coffee-script'
" Bundle 'bling/vim-airline'
" Bundle 'junegunn/goyo.vim'
" 
" Bundle 'airblade/vim-gitgutter'
" 
" Bundle 'scrooloose/nerdcommenter'
" 
" Bundle 'IndexedSearch'
" Bundle 'acustodioo/vim-tmux'
" Bundle 'L9'
" Bundle 'pig.vim'
" 
" Bundle 'sjl/badwolf'
" Bundle 'altercation/vim-colors-solarized'
" Bundle 'myhere/vim-nodejs-complete'
" Bundle 'nanotech/jellybeans.vim'
" 
" Bundle 'godlygeek/tabular'
" Bundle 'digitaltoad/vim-jade'
" Bundle 'reedes/vim-pencil'
" Plugin 'tpope/vim-markdown'

filetype plugin indent on

" Font
set antialias
"set gfn=Monaco\ for\ Powerline:h11
if has("gui_macvim")
  set macligatures
endif


set gfn=Fira\ Code:h12
" set gfn=fixed-6x13:h13

" colors
set bg=dark

" swaps and backup
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set undofile
set undodir=~/.vim/undo

" enc
set encoding=utf-8

" tabs and indentation
set expandtab
set linebreak
set shiftwidth=2
set tabstop=2
set softtabstop=2
set backspace=2
set autoindent
set smartindent
set nowrap

" statusline
set laststatus=2
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" searching
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,*.class

" folds
" set foldmethod=syntax
" set foldnestmax=2

if executable("ack")
  set grepprg=ack\ -H\ --nogroup\ --nocolor
endif

set makeprg=sbt\ compile
set efm=%E\ %#[error]\ %f:%l:\ %m,%C\ %#[error]\ %p^,%-C%.%#,%Z,
       \%W\ %#[warn]\ %f:%l:\ %m,%C\ %#[warn]\ %p^,%-C%.%#,%Z,
       \%-G%.%#

" let g:zenburn_high_Contrast=1
colorscheme molokai

" Cursor
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" wtf
"hi scalaNew gui=underline
"hi scalaMethodCall gui=italic
"hi scalaValName gui=underline
"hi scalaVarName gui=underline

let loaded_matchparen = 0

augroup filetypedetect 
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END 

autocmd FileType mkd setlocal spell

" ---------------
" Indent Guides
" ---------------
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey

let g:airline_powerline_fonts = 1


" JSON
let g:vim_json_syntax_conceal = 0 
