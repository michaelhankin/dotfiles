"""""""""
""" Setup
"""""""""

" Enable true color
set termguicolors

" Add plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

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

" Use <C-I> to clear the highlighting of :set hlsearch
if maparg('<C-I>', 'n') ==# ''
  nnoremap <silent> <C-I> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-I>
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

" Don't show mode on last line; not needed thanks to airline
set noshowmode

" Always show signcolumn
set signcolumn=yes

" Easier split navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Open new split panes to the right and bottom
set splitbelow
set splitright


"""""""""""""""""
""" Plugin config
"""""""""""""""""

"" vim-airline/vim-airline

" Enable tabline
let g:airline#extensions#tabline#enabled = 1
" Show buffer numbers
let g:airline#extensions#tabline#buffer_nr_show = 1

"" prettier/vim-prettier

" auto-format before saving, changing text, or leaving insert mode
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat = 0
autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

