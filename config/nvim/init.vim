" Enable true color
set termguicolors

" Add plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()

" Set color scheme
colorscheme gruvbox
