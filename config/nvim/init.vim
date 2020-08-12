"""""""""""""
""" Setup
"""""""""""""

" Enable true color
set termguicolors

" Add plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Deoplete and dependencies
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/echodoc.vim'

call plug#end()


""""""""""""""""""""""
""" General config
""""""""""""""""""""""

" Remap leader key to ','
let mapleader=","

" Disable swap files
set noswapfile

" Disable backup files
set nobackup

" Always use the appropriate number of spaces for a <Tab> in insert mode
set expandtab
" Show existing tabs as 4 spaces
set tabstop=4
" Effectively sets shiftwidth = tabstop, meaning that auto-indent inserts 2 spaces
set shiftwidth=0

" Use <C-N> to clear the highlighting of :set hlsearch
if maparg('<C-N>', 'n') ==# ''
  nnoremap <silent> <C-N> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR>
endif

" Keep 1 line above and below the cursor while scolling
set scrolloff=1

" Ignore case when searching in a file
set ignorecase
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

" Shortcuts for common write/quit commands
nnoremap <Leader>w :w<CR>
nnoremap <Leader>z :wq<CR>
nnoremap <Leader>x :q!<CR>
nnoremap <Leader>a :qa<CR>


"""""""""""""""""""""
""" Plugin config
"""""""""""""""""""""

"" vim-airline/vim-airline
" Enable tabline
let g:airline#extensions#tabline#enabled = 1
" Show buffer numbers
let g:airline#extensions#tabline#buffer_nr_show = 1

"" prettier/vim-prettier
" Auto-format on save
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

"" mhartington/nvim-typescript
" Enable default key mappings
let g:nvim_typescript#default_mappings = 1

"" Shougo/deoplete
" Enable at start-up
let g:deoplete#enable_at_startup = 1

"" Shougo/echodoc.vim
" Enable at start-up
let g:echodoc#enable_at_startup = 1
" Display docs in floating window
let g:echodoc#type = 'floating'

