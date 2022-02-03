"                     _   _   _                 
"                    | | | | (_)                
"            ___  ___| |_| |_ _ _ __   __ _ ___ 
"           / __|/ _ \ __| __| | '_ \ / _` / __|
"           \__ \  __/ |_| |_| | | | | (_| \__ \
"           |___/\___|\__|\__|_|_| |_|\__, |___/
"                                      __/ |    
"                                     |___/     
                                     
set nocompatible
syntax on
filetype plugin indent on

" indent rules
set tabstop=4
set shiftwidth=4
set expandtab

" set leader
let mapleader = ','

" min number of lines above and below cursor
set so=7

set number relativenumber

set noshowmode

set encoding=utf-8

" highlight matches with last search  pattern
set hls is

" use system clipboard as register
set clipboard=unnamedplus

" use zsh as shell
set shell=/bin/zsh
set shellcmdflag=-ic

set hlsearch
set incsearch

set mouse=a

"                        _                                                        _     
"                       | |                                                      | |    
"             __ _ _   _| |_ ___     ___ ___  _ __ ___  _ __ ___   __ _ _ __   __| |___ 
"            / _` | | | | __/ _ \   / __/ _ \| '_ ` _ \| '_ ` _ \ / _` | '_ \ / _` / __|
"           | (_| | |_| | || (_) | | (_| (_) | | | | | | | | | | | (_| | | | | (_| \__ \
"            \__,_|\__,_|\__\___/   \___\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_|___/
"                                                                                       
"                                                                                       

" toggle relative number when entering and leaving insert mode
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END


"                                        _                 
"                                       (_)                
"            _ __ ___   __ _ _ __  _ __  _ _ __   __ _ ___ 
"           | '_ ` _ \ / _` | '_ \| '_ \| | '_ \ / _` / __|
"           | | | | | | (_| | |_) | |_) | | | | | (_| \__ \
"           |_| |_| |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
"                           | |   | |             __/ |    
"                           |_|   |_|            |___/     

" move cursor by display lines when wrapping
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

nmap <Leader><space> :nohlsearch<cr>

"                                                          _     
"                                                         | |    
"             ___ ___  _ __ ___  _ __ ___   __ _ _ __   __| |___ 
"            / __/ _ \| '_ ` _ \| '_ ` _ \ / _` | '_ \ / _` / __|
"           | (_| (_) | | | | | | | | | | | (_| | | | | (_| \__ \
"            \___\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_|___/
"                                                                
"                                                                

" make comments with ascii font
" usage: :Doc hello world
function! CommentStart()
    let str = split(&commentstring, '%s')[0]
    let str = substitute(str, '"', '\\\\\\"', '') 
    let str = substitute(str, '#', '\\#', '') 
    return str
endfunction

function! CommentEnd()
    let str = len(split(&commentstring, '%s')) == 1 ? '' : split(&commentstring, '%s')[1]
    let str = substitute(str, '"', '\\\\\\"', '')
    let str = substitute(str, '#', '\\#', '') 
    return str
endfunction

command! -nargs=+ Doc :execute ':r !figlet -f ~/temp/figlet-fonts/Doom <args> | awk "{ print \"' . CommentStart() . '     \"\$0 \"     ' . CommentEnd() . '\" }"'

"                  _             _           
"                 | |           (_)          
"            _ __ | |_   _  __ _ _ _ __  ___ 
"           | '_ \| | | | |/ _` | | '_ \/ __|
"           | |_) | | |_| | (_| | | | | \__ \
"           | .__/|_|\__,_|\__, |_|_| |_|___/
"           | |             __/ |            
"           |_|            |___/             

" plugins
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'tpope/vim-fugitive'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


"                  _             _                  _   _   _                 
"                 | |           (_)                | | | | (_)                
"            _ __ | |_   _  __ _ _ _ __    ___  ___| |_| |_ _ _ __   __ _ ___ 
"           | '_ \| | | | |/ _` | | '_ \  / __|/ _ \ __| __| | '_ \ / _` / __|
"           | |_) | | |_| | (_| | | | | | \__ \  __/ |_| |_| | | | | (_| \__ \
"           | .__/|_|\__,_|\__, |_|_| |_| |___/\___|\__|\__|_|_| |_|\__, |___/
"           | |             __/ |                                    __/ |    
"           |_|            |___/                                    |___/     

" color scheme
color dracula
set termguicolors
set background=dark

" airline configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_theme='dracula'
