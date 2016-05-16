""""""""""""""""""""""""""
"  Status line settings  "
""""""""""""""""""""""""""
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

""""""""""""""""""""
"  CtrlP settings  "
""""""""""""""""""""
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
    \ --ignore .git
    \ --ignore .svn
    \ --ignore .hg
    \ --ignore .DS_Store
    \ --ignore .sass-cache
    \ --ignore bower_components
    \ --ignore "**/*.pyc"
    \ --ignore vendor
    \ --ignore node_modules
    \ -g ""'

let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window='results=100'

""""""""""""""""""""""""
"  Syntastic settings  "
""""""""""""""""""""""""

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""
"  PHP VIM Namespace  "
"""""""""""""""""""""""
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
" autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
" autocmd FileType php inoremap <Leader>l <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>l :call PhpExpandClass()<CR>

" autocmd FileType php inoremap <Leader>o <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>o :call PhpSortUse()<CR>
