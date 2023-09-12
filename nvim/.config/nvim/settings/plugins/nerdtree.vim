" PLUGIN: NedrTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapActivateNode='<space>'
let NERDTreeShowHidden=1
let g:NERDTreeChDirMode = 1
let g:NERDTreeHijackNetrw = 1
" let g:WebDevIconsUnicodeDecorateFolderNodes = v:false
" let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
let g:NERDTreeDirArrowExpandable = "+"
let g:NERDTreeDirArrowCollapsible = "-"
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize=40
autocmd FileType nerdtree setlocal signcolumn=no
