call plug#begin()

" Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

" File Tree
Plug 'preservim/nerdtree'

" Auto Pair
Plug 'jiangmiao/auto-pairs'

" ZeR0's Config

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
set completeopt-=preview
let g:deoplete#enable_at_startup = 1

call plug#end()
