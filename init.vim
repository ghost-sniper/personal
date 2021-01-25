" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetcher https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separator
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'


" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clofure' }

" Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outsize ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Theme
Plug 'morhetz/gruvbox'
Plug 'davidklsn/vim-sialoquent'

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

Plug 'mg979/vim-visual-multi', {'branch':'master'}
" Code Complement Plugin
if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
		Plug 'Shougo/deoplete.nvim'
		Plug 'roxma/nvim-yarp'
		Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'zchee/deoplete-go', { 'do': 'make' }

Plug 'w0rp/ale'

Plug 'preservim/tagbar'

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile' }


Plug 'voldikss/vim-floaterm'

" Vim syntax highlighting for Google's Protocol Buffers
Plug 'uarun/vim-protobuf'

" Vim yaml plugin
Plug 'stephpy/vim-yaml'

" Vim Vue Plugin
Plug 'posva/vim-vue'

" Emmet-vim
Plug 'mattn/emmet-vim'

" Initialize plugin system
call plug#end()

" Themes
colorscheme gruvbox
"set background=dark " or set background=light

set guifont=Courier/20
set foldenable
set showcmd
set shortmess=atI

set syntax=on
set autoindent
set cindent
set matchtime=1
set nocompatible
set fileencodings=utf-8,gb18030,gbk,gb2312,cp936,ucs-bom
set termencoding=utf-8
set encoding=utf-8

set showmatch

set number

set cursorline

" deoplete-go settings
let g:deoplete#sources#go#gocode_binary='/Users/caesar/go/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const' ]

" NERDTree settings
autocmd VimEnter * NERDTree

map :silent! NERDTreeToggle
let NERDTreeShowBookmarks = 1

" TagBar settings
let g:tagbar_ctags_bin='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
let g:tagbar_right=0
" let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
autocmd BufReadPost *.cpp, *.c, *.java, *.go call tagbar#autoopen()
nmap <F8> :TagbarToggle<CR>
nmap <silent> <F9> <Plug>MarkdownPreview
nmap <silent> <F7> <Plug>StopMarkdownPreview

" Neovim global settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
