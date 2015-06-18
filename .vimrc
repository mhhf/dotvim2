" GENERAL
set nocp
filetype off

let mapleader = '\<Space>' 
let maplocalleader = '\<Space>'

" VUNDLE
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" PLUGINS
Plugin 'tpope/vim-fugitive'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'bling/vim-airline'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'airblade/vim-gitgutter'
Plugin 'digitaltoad/vim-jade'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'tmhedberg/matchit'
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tcomment_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required

" COLORSHEMA
colorscheme molokai
set foldlevelstart=20
set t_Co=256
syn on

" SEARCH
set hlsearch "Highlight search things
set incsearch "Make search act like search in modern browsers

"    CASE SENSITIVE
set ignorecase "Ignore case when searching
set smartcase


" FEEDBACK
set noerrorbells
set novisualbell

" APPEARANCE
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

autocmd BufEnter * set colorcolumn=80,+3
highlight ColorColumn guibg=#222526

" line numbers
set number
au WinEnter * set relativenumber
au WinLeave * set norelativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
au WinEnter * :set winfixheight
au WinEnter * :wincmd =

" SIDE BEHAVIOUR
set noswapfile "DON'T CREATE SWAP FILES
set nolazyredraw "Don't redraw while executing macros 

" LINEBREAKS
set linebreak
set breakindent
set showbreak=↳
set breakindentopt=shift:2,sbr

" INDENTS
set autoindent
set smartindent
"    Tabs AND TAB Visualisation
set ts=2 sw=2 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0

hi IndentGuidesOdd  guibg=#2e3233
hi IndentGuidesEven guibg=#2e3233

nnoremap o ox<BS>
nnoremap O Ox<BS>





" KEYMAPPINGS

" generall mapping

" let g:EasyMotion_leader_key = '<Space>'
" map <Space> \

" navigate arraywise not linewise
map <DOWN> gj
map <UP> gk


" typo helpers
command! W w
command! Wq wq
command! WQ wq
command! Q q
map q: :q

" custom helpers
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>

" navigation
nmap gh <Plug>GitGutterNextHunk
nmap gH <Plug>GitGutterPrevHunk

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz


" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-down> <c-w>j

nnoremap <c-k> <c-w>k
nnoremap <c-up> <c-w>k

nnoremap <c-h> <c-w>h
nnoremap <c-left> <c-w>h

nnoremap <c-l> <c-w>l
nnoremap <c-right> <c-w>l



" PLUGIN SPECIFIC
"
" CTRLP
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" LatexBox
nmap <Space>ll :Latexmk<CR>

" NERDTREE
let NERDTreeQuitOnOpen=1
map <F2> :e.<CR>
" map <F2> :NERDTreeToggle<CR>
