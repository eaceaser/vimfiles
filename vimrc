" General
syntax on
set autoread

" Interface
set wildmenu
set wildmode=longest:full
set hidden
set nocompatible
set cmdheight=2
set ttyfast
set smartcase
"set cursorline
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

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'derekwyatt/vim-scala'

filetype plugin indent on

" Font
set noantialias
set gfn=fixed-6x13:h13
if has("gui_running")
  colorscheme ir_black
  set guioptions=egm
endif

" colors
set bg=dark

" swaps and backup
set nobackup
set nowb
set noswapfile
set undofile
set undodir=~/.vim/undo

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

let g:zenburn_high_Contrast=1
colorscheme zenburn

map <F8> :set number!<CR>
map! <F8> :set number!<CR>

" wtf
"hi scalaNew gui=underline
"hi scalaMethodCall gui=italic
"hi scalaValName gui=underline
"hi scalaVarName gui=underline

let loaded_matchparen = 0
