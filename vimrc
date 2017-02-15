call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'junegunn/vim-easy-align'
Plug 'sickill/vim-monokai'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'StanAngeloff/php.vim'
Plug 'shawncplus/phpcomplete.vim'
Plug 'ervandew/supertab'
Plug 'posva/vim-vue'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'jwalton512/vim-blade'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-liquid'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'garbas/vim-snipmate'
Plug 'thoughtbot/vim-rspec'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-bundler'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/tlib'
Plug 'tpope/vim-commentary'
Plug 'nono/vim-handlebars'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'stephpy/vim-php-cs'
call plug#end()

set t_Co=256
syntax enable
set background=dark
colorscheme onedark

set nocompatible
filetype indent plugin on
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse=a
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set shiftwidth=4
set softtabstop=4
set expandtab
set cursorline
set cursorcolumn
set autoread

set list
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<,space:·

" Paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

set shiftwidth=2
set softtabstop=2
set expandtab

inoremap <C-q> <esc>:qa!<cr>               " quit discarding changes
nnoremap <C-q> :qa!<cr>

nnoremap <silent> <F4> :BufExplorer<CR>
nnoremap <silent> <s-F4> :ToggleBufExplorer<CR>
nnoremap <C-t><C-w> :close<CR>

nnoremap <C-E><C-X> :Ex.<CR>

" Ctrl- P mapping and two custom split keymappings (https://github.com/kien/ctrlp.vim)
let g:ctrlp_map = '<c-p>'
nmap <c-n>s :split<CR><c-w>j<c-p>
nmap <c-n>v :vsplit<CR><c-w>l<c-p>

" Copy and paste
if has('clipboard') && !has('gui_running')
  vnoremap <C-c> "+y
  vnoremap <C-x> "+d
  vnoremap <C-v> "+p
  inoremap <C-v> <C-r><C-o>+
endif

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
