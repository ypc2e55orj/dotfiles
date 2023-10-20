let g:LanguageClient_diagnosticsEnable = 0

let g:LanguageClient_serverCommands = {
            \ 'javascript': ['javascript-typescript-stdio'],
            \ 'typescript': ['typescript-language-server', '--stdio'],
            \ 'html': ['html-languageserver', '--stdio'],
            \ 'css': ['css-languageserver', '--stdio'],
            \ 'sh' : ['bash-language-server', 'start'],
            \ 'rust': ['rls'],
            \ 'cpp': ['clangd'],
            \ 'c': ['clangd'],
            \ 'haskell': ['hie-wrapper']
            \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
map <Leader>lk :call LanguageClient#textDocument_hover()<CR>
map <Leader>lg :call LanguageClient#textDocument_definition()<CR>
map <Leader>lr :call LanguageClient#textDocument_rename()<CR>
map <Leader>lf :call LanguageClient#textDocument_formatting()<CR>
map <Leader>lb :call LanguageClient#textDocument_references()<CR>
map <Leader>la :call LanguageClient#textDocument_codeAction()<CR>
map <Leader>ls :call LanguageClient#textDocument_documentSymbol()<CR>
