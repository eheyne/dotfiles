" Forget being compatible with good ol' vi
set nocompatible

" Add Pathogen
call pathogen#infect()
call pathogen#helptags()

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Turn on that syntax highlighting and set background color
syntax on

" Colorscheme
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized
set background=dark

" Search tool
let g:ackprg = 'ag --nogroup --nocolor --column'

" Remap leader
let mapleader = ","

" Seriously, guys. It's not like :W is bound to anything anyway.
command! W :w
command! Q :q
command! WQ :wq
command! Wq :wq
command! NT :NERDTreeToggle

" Shortcuts to make file navigation easier
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%
map <leader><leader> <C-^>

" Shortcut to make file searching easier
map <leader>a :Ag -i -C 2 

" Why is this not a default
set hidden

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Show incomplete cmds down the bottom
set showcmd

" Add line numbers
set number

" Yank from the cursor to the end of the line
nnoremap Y y$

" Highlight current line
set cursorline
" Highlight current column
set cursorcolumn

" Set commandbar height
set cmdheight=2

" Make tab completion act more like bash
set wildmenu
set wildmode=list:longest

" Whitespace stuff
set wrap
set tabstop=2
set shiftwidth=2
set expandtab

" Make omnicomplete a bit easier
imap <Leader>o <C-x><C-o>

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Status Line
set statusline=%F%m%r%h%w\ \ \ \ \ [POS=%2l,%2v][%p%%]\ \ \ \ \ \ [LEN=%L]
"set statusline=%F%m%r%h%w\ [TYPE=%Y]\ \ \ \ \ \ \ \ \ \ \ \ [POS=%2l,%2v][%p%%]\ \ \ \ \ \ \ \ \ \ \ \ [LEN=%L]\ \ \ \ \ \ \ \ \ \ \ \ %{fugitive#statusline()}
set laststatus=2

" No swap files here, no sir
set nobackup
set nowritebackup
set noswapfile

" Disable error bells
set noerrorbells
set visualbell
set t_vb=

" Enable mouse functionality
set mouse=a

" Enable Fuzzy Find
set runtimepath^=~/.vim/bundle/ctrlp

" Allow ctrlp to ignore certain directories
let g:ctrlp_custom_ignore = '[\/]\.(git|hg|svn|dev|test|tmp)$'

set wildignore+=*/.dev/*,*/bower_components/*,*/node_modules/*

" Add Handlebars support to Vim Commentary
autocmd Syntax handlebars set commentstring={{!\ %s\ }}

" Start NERD Tree on startup 
autocmd VimEnter * NERDTree

" Move cursor to main window
autocmd VimEnter * wincmd p
