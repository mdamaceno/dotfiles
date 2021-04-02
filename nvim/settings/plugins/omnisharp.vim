let g:OmniSharp_diagnostic_overrides = {
\ 'IDE0055': {'type': 'None'},
\ 'IDE0058': {'type': 'None'}
\}

let g:OmniSharp_diagnostic_exclude_paths = [
\ 'obj\\',
\ '^obj/Debug',
\ '[Tt]emp\\',
\ '\.nuget\\',
\ '\<AssemblyInfo\.cs\>'
\]

let g:OmniSharp_popup_options = {
\ 'wrap': v:true,
\ 'winhl': 'Pmenu:Pmenu'
\}

let g:OmniSharp_popup_position = 'atcursor'
let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_autoselect_existing_sln = 1
let g:OmniSharp_highlighting = 0
let g:OmniSharp_popup = 1
let g:OmniSharp_want_snippet=1
let g:OmniSharp_server_stdio = 1

augroup omnisharp_commands
    autocmd!

    " Synchronous build (blocks Vim)
    "autocmd FileType cs nnoremap <buffer> <F5> :wa!<CR>:OmniSharpBuild<CR>
    " Builds can also run asynchronously with vim-dispatch installed
    autocmd FileType cs nnoremap <buffer> <Leader>ob :wa!<CR>:OmniSharpBuildAsync<CR>

    " Show type information automatically when the cursor stops moving
    " autocmd CursorHold *.cs call OmniSharp#TypeLookup()

    " The following commands are contextual, based on the cursor position.
    autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

    " Finds members in the current buffer
    autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

    " Cursor can be anywhere on the line containing an issue
    autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
    " autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
    " autocmd FileType cs nnoremap <silent> K :OmniSharpDocumentation<CR>

    " Navigate up and down by method/property/field
    autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
    autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>

    " Testing
    autocmd FileType cs nnoremap <buffer> <C-t><C-t> :OmniSharpRunTests<CR>
    autocmd FileType cs nnoremap <buffer> <C-t><C-f> :OmniSharpRunTestsInFile<CR>
    autocmd FileType cs nnoremap <buffer> <C-t><C-i> :OmniSharpRunTest<CR>

    " Code Format
    autocmd FileType cs nnoremap <buffer> <Leader>cf :OmniSharpCodeFormat<CR>
augroup END

" Contextual code actions (uses fzf, CtrlP or unite.vim when available)
nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
" Run code actions with text selected in visual mode to extract method
xnoremap <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>


