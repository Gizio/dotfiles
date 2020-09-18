" Generic Keybinds 
inoremap ii <Esc> 
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
noremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()
nmap <C-n> :NERDTreeToggle<CR>

" Dvorak Keybinds
noremap d h
noremap h j
noremap t k
noremap n l
noremap j d
noremap J D

" Generic Settings
set nu
set hidden
set encoding=utf-8
set ruler
set mouse=a
set smartindent
set autoindent
set nobackup
set nowritebackup
set updatetime=300
set clipboard=unnamedplus
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set termguicolors

syntax on
colorscheme onedark

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }


call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'justinmk/vim-sneak'

call plug#end()

lua require'colorizer'.setup()
