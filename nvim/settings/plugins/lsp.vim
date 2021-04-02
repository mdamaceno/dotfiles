highlight PopupWindow ctermbg=lightblue guibg=lightblue

" func! s:setup_ls(...) abort
"     let l:servers = lsp#get_whitelisted_servers()

"     for l:server in l:servers
"         let l:cap = lsp#get_server_capabilities(l:server)

"         if has_key(l:cap, 'completionProvider')
"             setlocal omnifunc=lsp#complete
"         endif

"         if has_key(l:cap, 'hoverProvider')
"             setlocal keywordprg=:LspHover
"         endif

"         if has_key(l:cap, 'definitionProvider')
"             nmap <silent> <buffer> gd <plug>(lsp-definition)
"         endif

"         if has_key(l:cap, 'referencesProvider')
"             nmap <silent> <buffer> gr <plug>(lsp-references)
"         endif
"     endfor
" endfunc

augroup LSC
    autocmd!
    autocmd User lsp_setup call lsp#register_server({
                \ 'name': 'omnisharp-roslyn',
                \ 'cmd': {_->[&shell, &shellcmdflag, 'mono $HOME/.bin/omnisharp/OmniSharp.exe --languageserver']},
                \ 'whitelist': ['cs']
                \})

    autocmd User lsp_server_init call <SID>setup_ls()
    autocmd BufEnter * call <SID>setup_ls()
augroup END

