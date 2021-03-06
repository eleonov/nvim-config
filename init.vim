:set number
:set relativenumber
:set autoindent
:set list
:set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
:set nopaste
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set expandtab
:set mouse=a

call plug#begin()


Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/github/copilot.vim'
Plug 'https://github.com/hashivim/vim-terraform'
Plug 'https://github.com/tpope/vim-dotenv'
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'https://github.com/towolf/vim-helm'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}


call plug#end()

let NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 60

let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-yaml', 'coc-go', 'coc-html', 'coc-docker'] 

" airline theme Section
colo minimalist
let g:airline_theme='minimalst'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 1

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

nnoremap <C-n> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggleVCS<CR>
