" =========================================
" Who:   Sven Sporer | sohooo
" Where: https://github.com/sohooo/vimfiles
" =========================================

" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" ---------------
" Plugin Bundles
" ---------------

" Navigation
Bundle 'FuzzyFinder'
Bundle 'sjl/gundo.vim'
" UI Additions
Bundle 'mutewinter/vim-indent-guides'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'godlygeek/csapprox'
Bundle 'Rykka/ColorV'
Bundle 'skammer/vim-css-color'
Bundle 'ShowMarks'
" Colorschemes
Bundle 'mutewinter/ir_black_mod'
Bundle 'tomasr/molokai'
Bundle 'cschlueter/vim-wombat'
" Commands
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/tabular'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'EasyGrep'
Bundle 'Gist.vim'
" Automatic Helpers
Bundle 'IndexedSearch'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle 'gregsexton/MatchTag'
Bundle 'Shougo/neocomplcache'
Bundle 'sickill/vim-pasta'
Bundle 'tpope/vim-ragtag'
" SnipMate
Bundle "garbas/vim-snipmate"
" SnipMate Depedencies
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "snipmate-snippets"
" Language Additions
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-endwise'
Bundle 'msanders/cocoa.vim'
Bundle 'tpope/vim-haml'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'itspriddle/vim-jquery'
Bundle 'tpope/vim-rails'
Bundle 'mutewinter/taskpaper.vim'
Bundle 'leshill/vim-json'
" Libraries
Bundle 'L9'
Bundle 'tpope/vim-repeat'

filetype plugin indent on  " Automatically detect file types. (must turn on after Vundle)

" ----------------------------------------
" Platform Specific Configuration
" ----------------------------------------

if has('win32') || has('win64')
  " Windows
  source $VIMRUNTIME/mswin.vim
  set guifont=Consolas:h10:cANSI
  set guioptions-=T " Toolbar
  set guioptions-=m " Menubar

  " Set height and width on Windows
  set lines=60
  set columns=120

  " Windows has a nasty habit of launching gVim in the wrong working directory
  cd ~
elseif has('gui_macvim')
  " MacVim

  set guifont=Menlo\ Regular:h12
  " Hide Toolbar in MacVim
  if has("gui_running")
    set guioptions=egmrt
  endif
endif

" ----------------------------------------
" Regular Vim Configuartion (No Plugins Needed)
" ----------------------------------------

" ---------------
" Color
" ---------------
set background=dark

" Conditionally Set colorscheme
if has('unix') && !has('gui_macvim')
  if $TERM == 'xterm-256color'
    " Neato, 256 color terminal. We can use ir_black_mod
    colorscheme molokai
    "colorscheme ir_black_mod
  else
    " We can't use ir_black_mod :(
    let g:CSApprox_verbose_level=0
    colorscheme slate
  endif
else
  " We're good if not on unix or in MacVim
  colorscheme molokai
  "colorscheme ir_black_mod
endif

" ---------------
" Backups
" ---------------
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" ---------------
" UI
" ---------------
set ruler              " Ruler on
set number             " Line numbers on
set laststatus=2       " Always show the statusline
set cmdheight=2
set notitle            " set terminal's title
set scrolloff=3        " show 3 lines of context around cursor
set showmode           " display mode you're in
set wrap               " turn on line wrapping
set numberwidth=5      " width of line numbers
set antialias          " MacVim: smooth fonts

" ---------------
" Behaviors
" ---------------
syntax enable
set autoread           " Automatically reload changes if detected
set wildmenu           " Turn on WiLd menu
set hidden             " Change buffer - without saving
set history=768        " Number of things to remember in history.
set cf                 " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.
set autowrite          " Writes on make/shell commands
set timeoutlen=250     " Time to wait for a command (after leader for example)
set foldlevelstart=99  " Remove folds
set formatoptions=crql

" ---------------
" Text Format
" ---------------
set tabstop=2
set backspace=2 " Delete everything with backspace
set shiftwidth=2  " Tabs under smart indent
set cindent
set autoindent
set smarttab
set expandtab
set backspace=2

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase " Non-case sensitive search
set incsearch
set hlsearch

" ---------------
" Visual
" ---------------
set showmatch  " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink

" ---------------
" Sounds
" ---------------
set noerrorbells
set visualbell "disables beep in macvim
set t_vb=

" ---------------
" Mouse
" ---------------
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes

" Better complete options to speed it up
set complete=.,w,b,u,U

" ----------------------------------------
" Bindings
" ----------------------------------------

" Window Movement
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Fixes common typos
command W w
command Q q
map <F1> <Esc>
imap <F1> <Esc>

" remap escape; this rox
imap jj <Esc>

" Removes doc lookup binding because it's easy to fat finger
nmap K k
vmap K k

" Make line completion easier
imap <C-l> <C-x><C-l>

" ---------------
" Leader
" ---------------

" Set leader to ,
let mapleader=","

nmap <silent> <leader>s :set spell!<CR>
nmap <silent> <leader>vim :e ~/.vim/vimrc<CR>
nmap <silent> <leader>vir :e ~/.vim/README.md<CR>

" toggle paste mode on/off
map <F9> :set paste!<cr>:set paste?<cr>

" toggle line numbers
map <F10> :set number!<cr>:set number?<cr>

" easy tab switching
:nmap tt :tabnext<cr>
:map  tt :tabnext<cr>
:nmap <C-t> :tabnew<cr>
:imap <C-t> <Esc>:tabnew<cr>

" same indent behaviour in visual mode
:vmap > >gv
:vmap < <gv

" ----------------------------------------
" Auto Commands
" ----------------------------------------

if has("autocmd")
  " No formatting on o key newlines
  autocmd BufNewFile,BufEnter * set formatoptions-=o

  " No more complaining about untitled documents
  autocmd FocusLost silent! :wa

  " When editing a file, always jump to the last cursor position.
  " This must be after the uncompress commands.
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line ("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
endif
" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" Gundo
nmap <silent> <leader>u :GundoToggle<CR>

" ShowMarks
let g:showmarks_enable=0

" ---------------
" Neocachecompl
" ---------------
if !has('gui_macvim')
  "Neocachecompl doesn't work with MacVim Drawer version
  let g:neocomplcache_enable_at_startup=1
  let g:neocomplcache_enable_auto_select=1 "Select the first entry automatically
  let g:neocomplcache_enable_cursor_hold_i=1
  let g:neocomplcache_cursor_hold_i_time=300
  let g:neocomplcache_auto_completion_start_length=1

  " Tab / Shift-Tab to cycle completions
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"

  " Ctrl-K to complete and advance snippet
  imap <C-k>     <Plug>(neocomplcache_snippets_expand)
  smap <C-k>     <Plug>(neocomplcache_snippets_expand)
endif


" ---------------
" Syntastic
" ---------------
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

" Platform-specific config files
if has('win32') || has('win64')
  let g:syntastic_jsl_conf=$HOME.'/.vim/config/windows/syntastic/jsl.conf'
  let g:syntastic_disabled_filetypes=['sh'] " Disable .sh on Windows
endif

" ---------------
" FuzzyFinder
" ---------------
let g:fuf_modesDisable=['mrucmd'] " Enables FufMruFile
"nnoremap <silent><C-y> :FufMruFile<CR>
"nnoremap <silent><C-u> :FufFileWithCurrentBufferDir<CR>
nnoremap <leader>f :FufFile<CR>
nnoremap <leader>fm :FufMruFile<CR>
nnoremap <leader>fb :FufBuffer<CR>

" ---------------
" YankRing
" ---------------
nnoremap <leader>y :YRShow<CR>

" ---------------
" Powerline
" ---------------
let g:Powerline_symbols = 'fancy'

" ---------------
" NERDTree
" ---------------
"nmap <silent><C-n> :NERDTree<CR>
"nnoremap <leader>n :NERDTree<CR>
"nnoremap <leader>nf :NERDTreeFind<CR>
"nnoremap <leader>nc :NERDTreeClose<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2 " Change the NERDTree directory to the root node

" ---------------
" Indent Guides
" ---------------
let g:indent_guides_auto_colors=1
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_color_change_percent=3

nmap <Leader>g :IndentGuidesToggle<CR>

if has('unix') && !has('gui_macvim')
  if $TERM == 'xterm-256color'
    " Make the guides smaller since they will be crazy visible in 256color mode
    let g:indent_guides_guide_size=1
  else
    " Turn off the guides when 256color mode isn't available
    let g:indent_guides_enable_on_vim_startup=0
  endif
endif

" ---------------
" EasyGrep
" ---------------
let g:EasyGrepMode=0 
let g:EasyGrepCommand=0
let g:EasyGrepRecursive=1
let g:EasyGrepIgnoreCase=0
let g:EasyGrepHidden=0
let g:EasyGrepAllOptionsInExplorer=1
let g:EasyGrepWindow=1
let g:EasyGrepReplaceWindowMode=2
let g:EasyGrepOpenWindowOnMatch=1
let g:EasyGrepWindowPosition='botright'
let g:EasyGrepEveryMatch=0
let g:EasyGrepJumpToMatch=0
let g:EasyGrepInvertWholeWord=0
let g:EasyGrepFileAssociationsInExplorer=1
let g:EasyGrepOptionPrefix='<leader>vy'
let g:EasyGrepReplaceAllPerFile=0

" ---------------
" Tabular
" ---------------
nmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t= :Tabularize /=<CR>
nmap <Leader>t: :Tabularize /:\zs<CR>
vmap <Leader>t: :Tabularize /:\zs<CR>
nmap <Leader>t, :Tabularize /,\zs<CR>
vmap <Leader>t, :Tabularize /,\zs<CR>
nmap <Leader>t> :Tabularize /=>\zs<CR>
vmap <Leader>t> :Tabularize /=>\zs<CR>

" ---------------
" Vundle
" ---------------
nmap <Leader>bi :BundleInstall<CR>
nmap <Leader>bi! :BundleInstall!<CR>
nmap <Leader>bu :BundleInstall!<CR> " Because this also updates
nmap <Leader>bc :BundleClean<CR>


" Enable user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
