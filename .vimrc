call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'airblade/vim-gitgutter'

"color
Plug 'morhetz/gruvbox'

Plug 'davidhalter/jedi-vim'

Plug 'jiangmiao/auto-pairs'

Plug 'vim-airline/vim-airline'

Plug 'tpope/vim-fugitive'

call plug#end()

set number
set expandtab
set tabstop=4
set wrap
syntax on
colorscheme gruvbox
set background=dark
set t_Co=256

set hlsearch
set incsearch

"airline
let g:airline_theme='dark'

let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
"mappings

map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>
imap <f5> <ESC>:w<CR>:py3file %<CR>
map  <f5> <ESC>:w<CR>:py3file %<CR>
imap <f8> <ESC>:wq<CR>
map  <f8> <ESC>:wq<CR>

function! WinMove(key)
let t:curwin = winnr()
exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction
