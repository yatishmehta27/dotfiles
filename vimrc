" +++ Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'JamshedVesuna/vim-markdown-preview' 
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'djoshea/vim-autoread'
Plug '907th/vim-auto-save'
Plug 'pangloss/vim-javascript'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'junegunn/limelight.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/YouCompleteMe'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
endif
call plug#end()

"stuff to ignore when tab completing
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=.git/**
set wildignore+=public/assets/**
set wildignore+=vendor/**
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=Cellar/**
set wildignore+=app/assets/images/**
set wildignore+=_site/**
set wildignore+=home/.vim/bundle/**
set wildignore+=pkg/**
set wildignore+=**/.gitkeep
set wildignore+=**/.DS_Store
set wildignore+=**/*.netrw*
set wildignore+=node_modules/*
" General Setting

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup      " Do not backup the file
set nowritebackup " Do not create a backup file when overriding
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50    " Set the no of commands stored in history
set ruler         " Show the cursor position all the time
set showcmd       " Display incomplete commands
set incsearch     " Do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set visualbell    " Set visualbell for errors
set noerrorbells  " No error bells

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

syntax on

filetype plugin indent on

set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set encoding=utf-8
set autoread

" Display Settings
set t_Co=256
colorscheme vividchalk
set listchars=tab:\.\ ,trail:·
set list
set number
set showcmd
set showmode
set splitright
set splitbelow
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase
set wildmenu
set lazyredraw

" Lines & Columns
set cursorline
set softtabstop=2
set autoindent
set smartindent

set clipboard=unnamed
let g:auto_save = 1

" Global Keymaps"
map! jj <esc>

" Git vim-fugitive
map <leader>gst :Gstatus<cr>
map <leader>ga :Git add -A .<cr>
map <leader>gp :Gpush<cr>
map <leader>gca :Gcommit -a -v<cr>

" Markdown vim-markdown-preview 
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_hotkey='<C-M>'

source $HOME/.vim/colors/vividchalk.vim

" FZF
nnoremap <c-p> :Files<cr>
nnoremap <c-b> :Buffers<cr>
nnoremap <c-d> :BTags<cr>


command! -bang -nargs=* Ag
      \ call fzf#vim#ag(<q-args>,
      \                 <bang>0 ? fzf#vim#with_preview('up:60%')
      \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
      \                 <bang>0)
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

nnoremap K :grep! "\b<C-R><C-W>\b"<CR> :cw <CR>

" Open NERDTree on startup, when no file has been specified
autocmd VimEnter * if !argc() | NERDTree | endif
nmap <C-n> :NERDTreeToggle<CR>

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:go_fmt_command = "goimports"

let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_alternate_mode = "vsplit"

let $GOPATH = $GOPATH
let g:go_bin_path = "/usr/local/bin"
let g:go_fmt_command = "goimports"
