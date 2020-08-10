set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'christoomey/vim-sort-motion'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'kien/ctrlp.vim'
Plugin 'maralla/completor.vim', { 'do': 'make js' }
Plugin 'pangloss/vim-javascript'
Plugin 'prettier/vim-prettier'
Plugin 'scrooloose/nerdtree'
Plugin 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plugin 'townk/vim-autoclose'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'w0rp/ale'

" All of your Plugins must be added before the following line
call vundle#end()            " required

set nocompatible
set number
set backspace=2
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set smartindent
set ai
set ignorecase
set smartcase
set incsearch
set encoding=utf8
set nobackup
set noswapfile
set nowb
set history=1000
set hlsearch
set timeoutlen=1000 ttimeoutlen=0
"set clipboard=unnamedplus
set clipboard="+
set nocursorcolumn
set nocursorline
set norelativenumber
set lazyredraw
set ttyfast

set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

let g:completor_node_binary = '/usr/bin/node'

filetype indent on
filetype plugin on
syntax sync minlines=256
syntax on
let mapleader = "\<Space>"
let &t_Co=256
map <leader>h :noh<CR>
map sgf <C-e>f
map vgf <C-e>vgf
map gF <C-e>gf
map <C-t> :tabnew<CR>
map <C-w> :q<CR>
" map <C-[> gT
" map <C-]> gt
nnoremap <C-,> :tabprevious<CR>
nnoremap <C-.> :tabnext<CR>

map <C-\> :NERDTreeToggle<CR>

" kien/ctrlp.vim
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|.git|.meteor'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
" let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" prettier/vim-prettier
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#config#print_width = 80


" w0rp/ale
map <leader>p :ALEFix<CR>
let g:ale_linters = {
      \   'javascript': ['standard'],
      \}

let g:ale_fixers = {
      \   'javascript': ['prettier', 'eslint'],
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \}

let g:jsx_ext_required = 0
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'

highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_linters_explicit = 1
let g:ale_lint_on_save = 1
" let g:ale_fix_on_save = 1

" christoomey/vim-tmux-navigator
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-J> :TmuxNavigateDown<cr>
nnoremap <silent> <C-K> :TmuxNavigateUp<cr>
nnoremap <silent> <C-L> :TmuxNavigateRight<cr>
nnoremap <silent> <C-H> :TmuxNavigateLeft<cr>

autocmd FileType javascript set formatprg=prettier\ --stdin
