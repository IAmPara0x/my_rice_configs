call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-surround'
Plug 'ap/vim-css-color'
Plug 'romainl/vim-cool'
Plug 'mhinz/vim-signify'
Plug 'vimwiki/vimwiki'
Plug 'ryanoasis/vim-devicons'
call plug#end()

let g:python_recommended_style = 0

set nocompatible
filetype plugin indent on
syntax on
set smarttab
set tabstop=2
set shiftwidth=2
set expandtab
set incsearch
set ai
set cursorline
set background=dark
set termguicolors
set noswapfile
set wrap!
set mouse=a
set encoding=UTF-8
let mapleader = " "
inoremap jk <Esc>
noremap <Leader>fs :update<cr>
map <C-c><Esc>
noremap <Leader>ff :Files<cr>
noremap <Leader>fb :Buffers<cr>
noremap <Leader>fg :Rg<cr>
nmap <silent> <Leader>wj :wincmd j<CR>
nmap <silent> <Leader>wh :wincmd h<CR>
nmap <silent> <Leader>wl :wincmd l<CR>
nmap <silent> Y y$
noremap <Leader>y "+y
noremap <Leader>p "+p

set updatetime=100
set signcolumn=yes

colorscheme embark
let g:lightline = {
      \ 'colorscheme': 'embark',
      \ }

augroup vimrc_todo
    au!
    au Syntax * syn match MyTodo /\v<(FIXME|NOTE|TODO|OPTIMIZE|XXX):/
          \ containedin=.*Comment,vimCommentTitle
augroup END
hi def link MyTodo Todo

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

highlight Comment cterm=BoldItalic gui=BoldItalic guifg=#ff577f
highlight HighlightedyankRegion cterm=reverse gui=reverse
highlight Visual cterm=reverse gui=reverse
