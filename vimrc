
filetype on
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

syntax enable
set background=dark
colorscheme grb256 "solarized

set nocompatible

set modelines=0
set listchars+=trail:░

set guifont=Menlo:h18
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim
"call vam#ActivateAddons(['powerline'])

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80

nnoremap ; :
au FocusLost * :wa
" au InsertLeave * :%s=\s\+$==
autocmd FileType ruby,javascript,scss,coffee autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType ruby,javascript,scss,coffee autocmd BufWritePre * :%s/\t/  /e
match ErrorMsg '\s\+$'

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>ft Vatzf
nnoremap <leader>ff gg=G
nnoremap <leader>q gqip
nnoremap <leader>v V`]
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>fl :CommandTFlush
inoremap jj <ESC>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>h <C-w>new<C-w>l
nnoremap <leader>mv <C-w>H
nnoremap <leader>mh <C-w>K
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map <leader><leader> :ZoomWin<CR>
map <leader>cc :Rcontroller
map <leader>mm :Rmodel
map <leader>vv :Rview

" Yank to clipboard
vmap <C-c> "+y

nnoremap <leader>rc :!bundle exec cucumber --tags @dev
nnoremap <leader>rs :!bundle exec rspec spec --tag dev:true
nnoremap <leader>rtm :!bundle exec rake test:models
nnoremap <leader>rtc :!bundle exec rake test:controllers
nnoremap <leader>rtf :!bundle exec rake test:integration

imap <C-l> <Space>=><Space>

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Tabularize
if exists(":Tabularize")
    nmap <leader>b= :Tabularize /=<CR>
    vmap <leader>b= :Tabularize /=<CR>
    nmap <leader>b: :Tabularize /:\zs<CR>
    vmap <leader>b: :Tabularize /:\zs<CR>
endif

" Easy Buffer
nmap <Leader>er :EasyBuffer<CR>

let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

nmap <C-b> <C-o>
nmap <C-m> <C-]>
nmap gb <C-t>

" Open alternate file in a vertical split
map <leader>av :AV<CR>
map <F3> :TlistToggle<cr>
