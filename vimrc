call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

scriptencoding utf-8             " Use UTF-8
set autoindent
set autowrite "auto save before make/shell commands
set backspace=2 "let backspace delete tabs and newlines
set backupdir=~/tmp " where to put backup file
set cf "enable error files & jumping
set cindent
set clipboard+=unnamed " turns out I do like is sharing windows clipboard
set completeopt=menu,longest  "omni complete
set cpoptions=aABcsFsn
set cursorline " highlight active line
set directory=~/tmp " directory is the directory for temp file
set encoding=utf-8
set gdefault "replace all occurrences in line
set hidden
set history=1000
set ignorecase   " search ignoring case
set incsearch "turn on incremental search
set nobackup
set nocompatible
set noexpandtab 
set nohlsearch
set noswapfile
set nowrap
set nowritebackup
set number  "show line numbers
set scrolloff=1
set shiftwidth=2
set shortmess=atTI
set showmode
set sidescroll=1
set sidescrolloff=2
set smartcase    " but respect case whenever I type a capital letter
set smartindent
set smarttab
set softtabstop=2
set spelllang=en,el  "Enable spell check in both English and Greek
set spellsuggest=9
set tabstop=2
set title         "correct the window caption
set visualbell t_vb=
set wildmenu
set wildmode=full
set wrapscan  " Set the search scan to wrap around the file

let g:load_doxygen_syntax=1 "enable doxygen
filetype on " detect the type of file
filetype plugin on " load file type plug ins
filetype indent on " Enable file type-specific indenting and plug ins
syntax enable

"enable match it
:source $VIMRUNTIME/macros/matchit.vim

colorscheme wombat256

autocmd BufWritePost .vimrc source $MYVIMRC

" Syntax of these languages is fussy over tabs Vs spaces
autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

"""""""""""""""""""""
""keyboard
let mapleader=","

imap <S-cr> <esc>O
imap <C-cr> <esc>o
nmap <S-cr> O<esc>
nmap <cr> o<esc>

"move selection one line down and reselect
vmap <silent> <M-j> "hd"hp'[V']
"move selection one line up and reselect
vmap <silent> <M-k> "hdk"hP'[V']
"move current line down by one
nmap <silent> <M-j> :move+<cr>
"move current line up by one
nmap <silent> <M-k> :move-2<cr>

nmap <leader>v :edit $MYVIMRC<cr>

let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 300
let g:fuf_mrucmd_maxItem = 400

nmap <silent> <leader>ff :FufFileWithFullCwd **/<cr>
nmap <silent> <leader>fb :FufBuffer<cr>
nmap <silent> <leader>fr :FufMruFile<cr>
nmap <silent> <leader>fc :FufMruCmd<cr>
nmap <silent> <leader>fo :FufDirWithCurrentBufferDir<cr>
nmap <silent> <leader>fj :FufJumpList<cr>
nmap <silent> <leader>fx :FufQuickfix<cr>

nmap <silent> <leader>l :set list!<cr>
nmap <silent> <leader>h :set hlsearch!<cr>
nmap <silent> <leader>n :set number!<cr>
nmap <silent> <leader>w :set wrap!<cr>
nmap <silent> <leader>s :set spell!<cr>
nmap <silent> <C-Tab> :bn<cr>
nmap <silent> <S-C-Tab> :bp<cr>
nmap <C-s> :w<cr>
nmap Y y$
nnoremap <space> :
vnoremap <space> :
imap <C-Space> <C-x><C-o>
imap <M-=> <%=  -%><esc>hhhi
imap <M--> <%  -%><esc>hhhi
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <M-b> <S-Left>
cnoremap <M-f> <S-Right>
"""""""""""""""""""""
let ruby_operators = 1

command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis


" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

if exists('*HexHighlight()')
  nmap <leader>x :call HexHighlight()<Return>
endif

