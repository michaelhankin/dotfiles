"""""""""
""" Setup
"""""""""

" Enable true color
set termguicolors

" Add plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'itchyny/lightline.vim'

call plug#end()


""""""""""""""""""
""" General config
""""""""""""""""""

" Disable swap files
set noswapfile

" Disable backup files
set nobackup

" Always use the appropriate number of spaces for a <Tab> in insert mode
set expandtab
" Show existing tabs as 2 spaces
set tabstop=2
" Effectively sets shiftwidth = tabstop, meaning that auto-indent inserts 2 spaces
set shiftwidth=0

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

" Highlight the screen line that the cursor is currently on
set cursorline

" Don't show mode on last line; not needed thanks to lightline
set noshowmode

" Always show signcolumn
set signcolumn=yes


"""""""""""""""""
""" Plugin config
"""""""""""""""""

"" morhetz/gruvbox
" Enable italics
let g:gruvbox_italic = 1
" Set color scheme
colorscheme gruvbox

"" itchyny/lightline
let g:lightline = {
      \   'colorscheme': 'gruvbox',
      \   'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \   'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
      \ }

