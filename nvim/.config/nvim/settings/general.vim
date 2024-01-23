syntax on
filetype on
filetype indent on
filetype plugin on

set t_Co=256
set number
set relativenumber

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

set updatetime=1000
set nobackup
set nowritebackup
set noswapfile

set mouse=a

" Deal with unwanted white spaces (show them in red)
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Fix weird issue of vim not setting syntax for some files
au! BufRead,BufNewFile *Dockerfile* set filetype=dockerfile

" Enable or disable mouse with <leader>m
map <leader>m <ESC>:exec &mouse!=""? "set mouse=" : "set mouse=nv"<CR>

" Toggle BufExplorer with <leader><space>
nnoremap <silent> <Space> :ToggleBufExplorer<CR>

let g:python3_host_prog = '$HOME/.asdf/shims/python'
