" Enable true color
set termguicolors

" Add plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()

" Enable italics
let g:gruvbox_italic=1

" Set color scheme
colorscheme gruvbox
