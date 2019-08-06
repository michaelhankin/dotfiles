" Enable true color
set termguicolors

" Add plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }

call plug#end()

" Enable italics
let g:gruvbox_italic=1

" Set color scheme
colorscheme gruvbox

" Disable swap files
set noswapfile

" Disable backup files
set nobackup

" By default, <Tab> at the beginning of a line will always insert 2 spaces
set shiftwidth=2

" Use <C-L> to clear the highlighting of :set hlsearch
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" Keep 1 line above and below the cursor while scolling
set scrolloff=1

" Override the 'ignorecase' option if the search pattern contains uppercase characters
set smartcase

" Show line number in front of current line, and number relative to the cursor on all others
set number
set relativenumber

