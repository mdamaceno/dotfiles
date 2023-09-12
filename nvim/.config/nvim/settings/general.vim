set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set termencoding=utf-8

set t_Co=256
set backspace=indent,eol,start
set shiftround
set textwidth=80
set title
set tabstop=2 softtabstop=0 expandtab shiftwidth=2
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
set colorcolumn=120
set cursorline
set clipboard+=unnamedplus
set hlsearch
set incsearch
set smartcase
set nowrap
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<,space:·
set confirm

set updatetime=1000
set nobackup
set nowritebackup
set noswapfile

set mouse=a

syntax enable
filetype on
filetype indent on
filetype plugin on


" Deal with unwanted white spaces (show them in red)
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Fix weird issue of vim not setting syntax for some files
au! BufRead,BufNewFile *Dockerfile* set filetype=dockerfile

" function! IPhpInsertUse()
"     call PhpInsertUse()
"     call feedkeys('a',  'n')
" endfunction
" autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
" autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

map <leader>m <ESC>:exec &mouse!=""? "set mouse=" : "set mouse=nv"<CR>

nnoremap <silent> <Space> :ToggleBufExplorer<CR>

autocmd BufRead,BufNewFile *.go set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd BufRead,BufNewFile *.rb set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd BufRead,BufNewFile *.html,*.html.erb,erb set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
