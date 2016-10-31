"""""""""""""""""""""""
"  include vim files  "
"""""""""""""""""""""""
source ~/.vim/vim.d/vundle.vim
source ~/.vim/vim.d/plugin.vim

""""""""""""""""""""
"  Basic settings  "
""""""""""""""""""""
set number
let mapleader=','
set nofoldenable
set noerrorbells novisualbell t_vb=

""""""""""""""""""
"  Tab settings  "
""""""""""""""""""
set tabstop=4
set shiftwidth=4
set expandtab

""""""""""""""""""""""
"  Mapping settings  "
""""""""""""""""""""""
nmap <Leader>. :CtrlPTag<CR>
nmap <Leader>ag :Ag<Space>
nmap <Leader>cc :CtrlPClearAllCaches<CR>
nmap <Leader>cn :cnext<CR>
nmap <Leader>cp :cprev<CR>
nmap <Leader>d :bd<CR>
nmap <Leader>ev :e $MYVIMRC<CR>
nmap <Leader>fw :FixWhitespace<CR>
nmap <Leader>ft :tag<Space>
nmap <Leader>fh :set ft=html<CR>
nmap <Leader>fp :set ft=php<CR>
nmap <Leader>gc :!ctags
    \ --recurse=yes
    \ --languages=php
    \ --regex-php='/^[ \t]*trait[ \t]+([a-z0_9_]+)/\1/t,traits/i'
    \ --exclude=.git
    \ . <CR>
nmap <Leader>hl :nohl<CR>
nmap <Leader>n :bn<CR>
nmap <Leader>p :bp<CR>
nmap <Leader>s :w<CR>
nmap <leader>tn :tn<CR>
nmap <leader>tp :tp<CR>
nmap <Leader>ts :ts<CR>
nmap <Leader>x <C-^>
imap <C-H> <C-y>,
"""""""""""""""""""""""""""""""""""""""""
"  Source .vimrc automatically on save  "
"""""""""""""""""""""""""""""""""""""""""
augroup so_vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC :source $MYVIMRC
    autocmd BufWritePost $MYVIMRC :AirlineRefresh
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""
"  Filetype & Syntax settings for twig files  "
"""""""""""""""""""""""""""""""""""""""""""""""
augroup set_twig
    autocmd!
    " autocmd BufNewFile,BufRead *.twig :set ft=twig
    autocmd BufNewFile,BufRead *.twig :set syntax=htmldjango
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""
"  Filetype & Syntax settings for html files  "
"""""""""""""""""""""""""""""""""""""""""""""""
augroup set_html
    autocmd!
    autocmd BufNewFile,BufRead *.html :set ft=htmldjango
augroup END

""""""""""""""""""""""""""
"  Colorscheme settings  "
""""""""""""""""""""""""""
set background=dark
if has('gui_running')
    colorscheme molokai
else
    colorscheme slate
endif

"""""""""""""""""""
"  Text settings  "
"""""""""""""""""""
set linebreak
set textwidth=500
set wrap

"""""""""""
"  Ctags  "
"""""""""""
set tags=tags
set path=.

"""""""""""""""""""""""""""""""""""""""""""
"  returns true if paste mode is enabled  "
"""""""""""""""""""""""""""""""""""""""""""
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Tips
" di" delete everything inside parenthesis
" di) delete everything inside round brackets
" zz center the line where the current cursor is located on the screen
