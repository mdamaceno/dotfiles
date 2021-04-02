set encoding=utf8
set fileencoding=utf8
set termencoding=utf8

set t_Co=256
set backspace=indent,eol,start
set shiftround
set textwidth=80
set title
set tabstop=4 softtabstop=0 expandtab shiftwidth=4
set smarttab
set smartindent
set autoindent

set hidden
set splitbelow
set splitright

set cmdheight=2
set laststatus=2
set number
set relativenumber
set signcolumn=yes
set cursorline
set clipboard+=unnamedplus
set hlsearch
set incsearch
set smartcase
set nowrap
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<,space:·

set mouse=
set updatetime=1000
set nobackup
set nowritebackup
set noswapfile

syntax enable
filetype on
filetype indent on
filetype plugin on

" set termguicolors
set background=dark
colorscheme onedark

" Deal with unwanted white spaces (show them in red)
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Fix weird issue of vim not setting syntax for some files
au! BufRead,BufNewFile *Dockerfile* set filetype=dockerfile
