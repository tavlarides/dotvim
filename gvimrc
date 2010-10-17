colorscheme wombat256
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\ 
set showbreak=↪
set cpoptions=aABcsFsn
set visualbell t_vb=
set guifont=Inconsolata\ Medium\ 13
set guioptions-=L
set guioptions-=m
set guioptions-=R
set guioptions-=T
set guioptions-=l
set guioptions-=r
set guioptions+=c
set guicursor=n-v-c:block-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver10-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

set statusline=
set statusline +=%1*\ %n\ %*          	"buffer number
set statusline +=%5*%{&ff}%*						"file format
set statusline +=%3*%y%*								"file type
set statusline +=%4*\ %<%F%*						"full path
set statusline +=%2*%m%*								"modified flag
set statusline +=%1*%=%5l%*							"current line
set statusline +=%2*/%L%*								"total lines
set statusline +=%1*%4c\ %*           	"column number
"set statusline +=%2*0x%04B\ %*						"character under cursor
set statusline +=%{fugitive#statusline()} "git branch (if any)
set laststatus=2

hi User1 guifg=#eea040 guibg=#333333
hi User2 guifg=#dd3333 guibg=#333333
hi User3 guifg=#ff66ff guibg=#333333
hi User4 guifg=#a0ee40 guibg=#333333
hi User5 guifg=#eeee40 guibg=#333333
