call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-surround'
Plug 'ap/vim-css-color'
Plug 'romainl/vim-cool'
Plug 'mhinz/vim-signify'
Plug 'vimwiki/vimwiki'
Plug 'gabrielelana/vim-markdown'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neovimhaskell/haskell-vim'
Plug 'psliwka/vim-smoothie'
Plug 'easymotion/vim-easymotion'
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
set noshowmode
let mapleader = " "
vnoremap < <gv
vnoremap > >gv


" changes the color scheme

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

map <Leader><Leader> <Plug>(easymotion-prefix)
nmap s <Plug>(easymotion-s2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
let g:EasyMotion_use_smartsign_us = 1 " US layout

set updatetime=100

let g:material_theme_style = 'ocean'
colorscheme embark
let g:airline_theme='embark'
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

let g:airline_powerline_fonts = 1

highlight Comment guifg=#9088d4 cterm=bold gui=bold
highlight HighlightedyankRegion cterm=reverse gui=reverse
highlight Visual cterm=reverse gui=reverse

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
