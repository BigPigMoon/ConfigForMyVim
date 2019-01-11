call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"color
Plug 'morhetz/gruvbox'

Plug 'Valloric/YouCompleteMe'

Plug 'davidhalter/jedi-vim'

Plug 'jiangmiao/auto-pairs'

call plug#end()

set number
set expandtab
set tabstop=4
syntax on
colorscheme gruvbox
set background=dark

set hlsearch
set incsearch

"mappings

map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

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
