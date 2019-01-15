""""""""""""""""""""""""""""""""""""
" Marco Damaceno vimrc configuration
""""""""""""""""""""""""""""""""""""

set encoding=utf8
set t_Co=256

call plug#begin('~/.vim/plugged')
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/vim-easy-align'
Plug 'jlanzarotta/bufexplorer'
Plug 'ervandew/supertab'
Plug 'tpope/vim-endwise'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/tlib'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-system-copy'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'nvie/vim-togglemouse'
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
Plug 'tpope/vim-fugitive'
Plug 'alvan/vim-closetag'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" HTML plugins
Plug 'mattn/emmet-vim'

" Syntax highlighting
Plug 'sheerun/vim-polyglot'
Plug 'hjson/vim-hjson'

" PHP plugins
Plug 'stephpy/vim-php-cs-fixer'

" Markdown / Writting
Plug 'reedes/vim-pencil'
Plug 'plasticboy/vim-markdown'
Plug 'jtratner/vim-flavored-markdown'
Plug 'vim-scripts/LanguageTool'

" Colorschemes
Plug 'rainglow/vim'
Plug 'chriskempson/base16-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'koirand/tokyo-metro.vim'
Plug 'srcery-colors/srcery-vim'
Plug 'rakr/vim-one'
Plug 'jacoborus/tender.vim'
Plug 'sickill/vim-monokai'
Plug 'tomasr/molokai'
call plug#end()

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
set termguicolors

set background=dark

let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.dark': {
  \       'transparent_background': 1,
  \     }
  \   }
  \ }

" colorscheme PaperColor
" colorscheme rainbow-contrast
" colorscheme tokyo-metro
" colorscheme srcery
" colorscheme base16-default-dark
" colorscheme one
" colorscheme tender
" colorscheme monokai
colorscheme molokai

set nocompatible

filetype indent plugin on


" Show linenumbers
set number
set relativenumber
set ruler

"Show statusline
set laststatus=2

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

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Enable highlighting of the current line
set cursorline

" Only highlight when searching
set nohlsearch

if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

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

nnoremap <C-o> :e.<cr>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ['/home/mdamaceno/.vim/ultisnips']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" PHP CS Fixer setup
let g:php_cs_fixer_rules = "@PSR2"
let g:php_cs_fixer_config_file = '/home/mdamaceno/.php_cs'
autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

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

" PHP imports
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
let g:php_namespace_sort_after_insert = 1

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

nnoremap <silent> <Leader>k :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>j :exe "resize " . (winheight(0) * 2/3)<CR>

" VIM Markdown
let g:vim_markdown_folding_disabled = 1

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
