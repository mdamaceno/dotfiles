" PLUGIN: Coc
" Use K to show documentation in preview window.
" let g:coc_global_extensions=[ 'coc-omnisharp' ]

let b:coc_diagnostic_disable=0

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Toggle duplicate LS sources
function Disable_ls_duplicates()
:call CocAction('toggleSource', 'cs-1')
:call CocAction('toggleSource', 'cs-2')
:call CocAction('toggleSource', 'cs-3')
:call CocAction('toggleSource', 'cs-4')
endfunction

" Map the function call
nnoremap dld :call Disable_ls_duplicates()

let g:coc_global_extensions = ['coc-solargraph']

" Golang

autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.format')
