filetype plugin indent on

"""
""" Vim Plug
"""
call plug#begin('~/.cache/nvim/plugged')
Plug 'alvan/vim-closetag'
Plug 'dense-analysis/ale'
Plug 'dyng/ctrlsf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'honza/vim-snippets'
Plug 'jlanzarotta/bufexplorer', {'on': 'ToggleBufExplorer'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim', { 'on': ['Files', 'GFiles', 'Ag', 'Rg', 'Buffers', 'Lines'] }
" Plug 'junegunn/vim-easy-align'
Plug 'rrethy/vim-illuminate'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rails', {'for': 'ruby'}
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'github/copilot.vim'
Plug 'hachy/eva01.vim', { 'branch': 'main' }
Plug 'krischik/vim-ada', {'for': 'ada'}

" Code Companion
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'olimorris/codecompanion.nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
call plug#end()

"""
""" Theme
"""
set background=dark
set termguicolors
colorscheme eva01

hi Visual       ctermfg=NONE  ctermbg=55    cterm=bold
hi CursorLine   ctermfg=NONE  ctermbg=NONE  cterm=bold,underline
hi CursorColumn ctermfg=NONE  ctermbg=232   cterm=NONE
" hi ColorColumn  ctermfg=NONE  ctermbg=54    cterm=NONE
" hi LineNr       ctermfg=248   ctermbg=NONE  cterm=NONE
" hi VertSplit    ctermfg=NONE  ctermbg=NONE  cterm=NONE
" hi MatchParen   ctermfg=80   ctermbg=NONE  cterm=underline
" hi StatusLine   ctermfg=112   ctermbg=234   cterm=NONE
" hi StatusLineNC ctermfg=231   ctermbg=236   cterm=NONE
" hi Pmenu        ctermfg=white ctermbg=235 cterm=NONE
" hi PmenuSel     ctermfg=white ctermbg=176   cterm=bold
" hi IncSearch    ctermfg=235   ctermbg=186   cterm=NONE
" hi Search       ctermfg=255   ctermbg=55    cterm=underline
" hi Directory    ctermfg=80   ctermbg=NONE  cterm=bold
" hi Folded       ctermfg=80    ctermbg=235   cterm=NONE
" hi SignColumn   ctermfg=112   ctermbg=NONE  cterm=bold
" hi VertSplit    ctermfg=232
" hi Normal       ctermbg=NONE  ctermfg=255
" hi NonText      ctermbg=NONE  ctermfg=240

"""
""" General Config
"""
set encoding=UTF-8
set number
set relativenumber
set cursorline
set cursorcolumn
" set showtabline=2

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent

set updatetime=1000
set nobackup
set nowritebackup
set noswapfile
set clipboard=unnamedplus
set nowrap
set mouse=a
set completeopt-=preview

" Deal with unwanted white spaces (show them in red)
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Fix weird issue of vim not setting syntax for some files
au! BufRead,BufNewFile *Dockerfile* set filetype=dockerfile

"""
""" Keybindings
"""
" Disable arrow keys
noremap <Up>    <NOP>
noremap <Down>  <NOP>
noremap <Left>  <NOP>
noremap <Right> <NOP>

" Switch splits easily
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize panel
nnoremap <silent><Leader>j :exe "resize " . (winheight(0) * 4/3)<CR>
nnoremap <silent><Leader>k :exe "resize " . (winheight(0) * 3/4)<CR>
nnoremap <silent><Leader>l :exe "vertical resize " . (winwidth(0) * 4/3)<CR>
nnoremap <silent><Leader>h :exe "vertical resize " . (winwidth(0) * 3/4)<CR>

" Remap :W to be like :w
command!  W :w

" Remap :Q to be like :q
command!  Q :q
"
" Remap :Qa to be like :qa
command!  Qa :qa

" Enable heredoc syntax highlighting
let g:vimsyn_embed = 'lpPr'

" Enable or disable mouse with <leader>m
map <leader>m <ESC>:exec &mouse!=""? "set mouse=" : "set mouse=nv"<CR>

"""
""" bufexplorer
"""
" Toggle BufExplorer with <leader><space>
nnoremap <silent> <Space> :ToggleBufExplorer<CR>
let g:bufExplorerShowRelativePath=1

"""
""" ALE
"""
let g:lightline#ale#indicator_checking = "\uf110 "
let g:lightline#ale#indicator_infos    = "\uf129 "
let g:lightline#ale#indicator_warnings = "\uf071 "
let g:lightline#ale#indicator_errors   = "\uf05e "
let g:lightline#ale#indicator_ok       = "\uf00c "

" let g:ale_virtualtext_cursor = 1
" let g:ale_list_window_size = 5
" let g:airline#extensions#ale#enabled = 1
" let g:ale_fixers = {
" \   'javascript': ['prettier'],
" \   'css': ['prettier'],
" \   'ruby': ['rubocop'],
" \}
" let g:ale_linters_explicit = 1

let g:ale_ruby_rubocop_executable = 'bundle'

map <leader>cc :ALEToggle<CR>

"""
""" Airline
"""
let g:airline_theme='deus'
let g:airline_detect_iminsert=1
let g:airline_exclude_preview=1
" let g:airline_statusline_ontop=1

"""
""" fzf
"""
" better layout for fzf
" let $FZF_DEFAULT_OPTS .= ' --layout=reverse'
" let g:fzf_vim.buffers_jump = 1

" Find file
nnoremap <c-p> :Files<cr>
nnoremap <c-g> :GFiles<cr>

" Search in files
map <c-i> :Ag<cr>

" let $FZF_DEFAULT_OPTS .= ' --layout=reverse'
" let g:fzf_vim.buffers_jump = 1

" Find file
nnoremap <c-p> :Files<cr>
nnoremap <c-g> :GFiles<cr>

" Search in files
map <c-i> :Ag<cr>

"""
""" copilot
"""
let g:copilot_filetypes = {
      \ 'yaml.docker-compose': v:true,
      \ }
let b:copilot_enabled = v:true

"""
""" Nerdtree
"""
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapActivateNode='<space>'
let NERDTreeMapOpenInTab='<tab>'
let NERDTreeShowHidden=1
let g:NERDTreeChDirMode = 1
" let g:NERDTreeHijackNetrw = 1
" let g:NERDTreeDirArrowExpandable = "🫥"
" let g:NERDTreeDirArrowCollapsible = "😃"
let g:NERDTreeWinPos = "left"
let g:NERDTreeWinSize=40
autocmd FileType nerdtree setlocal signcolumn=no

" NERDTrees File highlighting only the glyph/icon
" test highlight just the glyph (icons) in nerdtree:
autocmd filetype nerdtree highlight haskell_icon ctermbg=none ctermfg=White guifg=White
autocmd filetype nerdtree highlight go_icon ctermbg=none ctermfg=LightBlue guifg=LightBlue
autocmd filetype nerdtree highlight dockerfile_icon ctermbg=none ctermfg=LightCyan guifg=LightCyan
autocmd filetype nerdtree highlight ruby_icon ctermbg=none ctermfg=Red guifg=Red
autocmd filetype nerdtree highlight javascript_icon ctermbg=none ctermfg=LightYellow guifg=LightYellow

autocmd filetype nerdtree syn match haskell_icon ## containedin=NERDTreeFlags
autocmd filetype nerdtree syn match go_icon ## containedin=NERDTreeFlags
autocmd filetype nerdtree syn match dockerfile_icon ## containedin=NERDTreeFlags
autocmd filetype nerdtree syn match ruby_icon ## containedin=NERDTreeFlags,ruby
autocmd filetype nerdtree syn match javascript_icon ## containedin=NERDTreeFlags,javascript

"""
""" ultisnips
"""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/Ultisnips']

"""
""" Vim Illuminate
"""
" Don't highlight word under cursor (default: 1)
let g:Illuminate_highlightUnderCursor = 0
let g:Illuminate_ftblacklist = ['nerdtree']

"""
""" CtrlSF
"""
map <leader>ff :CtrlSF<space>
map <leader>ft :CtrlSFToggle<CR>

autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

" CodeCompanion
lua << EOF
  require("codecompanion").setup()
EOF

map <leader>aa :CodeCompanionChat Toggle<CR>
map <leader>ai :CodeCompanionChat <space>

lua <<EOF
  -- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)

        -- For `mini.snippets` users:
        -- local insert = MiniSnippets.config.expand.insert or MiniSnippets.default_insert
        -- insert({ body = args.body }) -- Insert at cursor
        -- cmp.resubscribe({ "TextChangedI", "TextChangedP" })
        -- require("cmp.config").set_onetime({ sources = {} })
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      -- { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
  })

  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['ts_ls'].setup {
    capabilities = capabilities
  }
EOF

lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "ruby", "html", "javascript", "typescript",
    "css", "json", "yaml", "dockerfile"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = { "html", "ruby" }, -- necessário para html.eruby
  },
}
EOF
