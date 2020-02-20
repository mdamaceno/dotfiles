""""""""""""""""""""""""""""""""""""
" Marco Damaceno vimrc configuration
""""""""""""""""""""""""""""""""""""

set encoding=utf8
" set t_Co=256

if &term =~ '256color'
  " disable Background Color Erase (BCE)
  set t_ut=
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-system-copy'
Plug 'SirVer/ultisnips'
Plug 'scrooloose/nerdtree'
Plug 'honza/vim-snippets'
Plug 'airblade/vim-gitgutter'
Plug 'craigemery/vim-autotag'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-repeat'
Plug 'raimondi/delimitmate'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'vim-airline/vim-airline'
Plug 'editorconfig/editorconfig-vim'

" Syntax highlighting
Plug 'sheerun/vim-polyglot'
Plug 'jparise/vim-graphql'

" Javascript plugins
Plug 'pangloss/vim-javascript'
Plug 'vim-syntastic/syntastic'

" PHP plugins
Plug 'stephpy/vim-php-cs-fixer'

" Ruby plugins
Plug 'vim-ruby/vim-ruby'

" Markdown / Writting
Plug 'plasticboy/vim-markdown'

" Colorschemes
Plug 'jpo/vim-railscasts-theme'

call plug#end()

if has('python3')
endif

"let g:powerline_pycmd = 'py3'

" Settings for TMUX
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax enable

set background=dark

colorscheme railscasts

" Set background transparent
hi Normal guibg=NONE ctermbg=NONE

set nocompatible

filetype on
filetype indent on
filetype plugin on

highlight ColorColumn ctermbg=white
set colorcolumn=80

" Show linenumbers
set number
set relativenumber
set ruler

"Show statusline
set laststatus=2

" Enable mouse
set mouse=a

" Set Proper Tabs
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent
set autoindent

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
nnoremap <Space> za

" Keep the history of the file when changing between buffers
set hidden

" Show invisible characters
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<

" Setup for pasting in insert mode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Enable highlighting of the current line
set cursorline
set cursorcolumn

" Only highlight when searching
set nohlsearch

set clipboard=unnamedplus

nnoremap <Leader>n :bn<CR>
nnoremap <Leader>N :bp<CR>

" Copy to system clipboard
nnoremap <Leader>y "*y
nnoremap <Leader>p "*p
nnoremap <Leader>Y "+y
nnoremap <Leader>P "+p

" Go to the directory overview keeping the file in buffer
nnoremap <C-E><C-X> :Ex.<CR>

" Open vimrc for editing
nnoremap <Leader>ve :edit ~/.vimrc<CR>

" Source vimrc file
nnoremap <Leader>vs :source ~/.vimrc<CR>

" AG vim
let g:ag_working_path_mode="r"

au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags" ] && .git/hooks/ctags' &

" NedrTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapActivateNode='<space>'
" autocmd vimenter * NERDTree
let g:NERDTreeDirArrowExpandable = '|'
let g:NERDTreeDirArrowCollapsible = '~'
let g:NERDTreeChDirMode = 2

" Remap :W to be like :w
command!  W :w

" Remap :Q to be like :q
command!  Q :q

" Navigate by display line
noremap j gj
noremap k gk

" Switch splits easily
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Better searches
set hlsearch
set incsearch
set smartcase

nnoremap <CR> :nohlsearch<cr>

" Autotags
let g:autotagTagsFile="tags"
let g:autotagCtagsCmd="phptags"
set tags+=tags,tags.vendors

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Vim repeat
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" Find file
nnoremap <c-p> :Files<cr>

" Search in files
nnoremap <leader>f :Ag<cr>

" List file in buffers
map <F4> <leader>bs

" Close current buffer
nnoremap <leader>q :bd<cr>

" Surround the string where the cursor is
map <leader>w <esc>ysiw

" Surround the entire line
map <leader>W <esc>yss

" Delete string used for surrounding
map <leader>dw <esc>ds

" Resize panel
nnoremap <silent> <Leader>j :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>k :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent><Leader>l :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent><Leader>h :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

" Split right and down always
set splitbelow
set splitright

" Enable autocompletion for HTML files
autocmd FileType html php set omnifunc=htmlcomplete#CompleteTags

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php,*.blade.php'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,php'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

let vim_markdown_preview_hotkey='<C-m>'

" Fix weird issue of vim not setting syntax for some files
au! BufRead,BufNewFile *Dockerfile* set filetype=dockerfile

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Ultisnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
