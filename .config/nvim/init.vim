" __  ____   __  _   _ _____ _____     _____ __  __ 
"|  \/  \ \ / / | \ | | ____/ _ \ \   / /_ _|  \/  |
"| |\/| |\ V /  |  \| |  _|| | | \ \ / / | || |\/| |
"| |  | | | |   | |\  | |__| |_| |\ V /  | || |  | |
"|_|  |_| |_|   |_| \_|_____\___/  \_/  |___|_|  |_|
"                                                   
" my neovim (vim) config. Can be used as .vimrc or/and init.vim
" todo: * add environment specific platform includes (for example, if vscode etc.)
"       * config YcM and add keyboard shortcuts for GotoDefinition etc
"       * integrate quickfix and compile functions
" ====== Basics =======
"set nocompatible
set autoindent
set background=dark
set clipboard=unnamedplus
set cmdheight=2
set colorcolumn=120
set conceallevel=0
set cursorline
set encoding=utf-8
set expandtab
set fileencoding=utf-8
set formatoptions-=cro
set hidden
set iskeyword+=-
set laststatus=0
set mouse=a
set nobackup
"set noshowmode
set nowrap
set nowritebackup
set number
set pumheight=10
set relativenumber
set ruler
set shiftwidth=4
set showcmd
set showtabline=2
set smartindent
set smarttab
set splitbelow
set splitright
set t_Co=256
set tabstop=4
set timeoutlen=1000
set updatetime=300
syntax enable
" create a swap directory for all vim swapfiles
set directory^=$HOME/vimswap//
" ======= Plugins ======
source ~/.config/nvim/plugins.vim

" ======= codi ============
highlight CodiVirtualText guifg='#98C379'
let g:codi#virtual_text_prefix = "❯ "
let g:codi#aliases = {
                   \ 'javascript.jsx': 'javascript',
                   \ }

" ======== Syntastic ========
let g:ycm_show_diagnostics_ui = 0

" ======== Airline =======
source ~/.config/nvim/airline.vim

" ======== NERDTREE =======
source ~/.config/nvim/nerdtree.vim
" ========= TAGBAR ========
source ~/.config/nvim/tagbar.vim
" ========= coc ===========
source ~/.config/nvim/coc.vim

" ======== You Complete me =======
" source ~/.config/nvim/ycm.vim

" ======= Minimap ========
" let g:minimap_highlight='Todo'

" ======= Starify ========
source ~/.config/nvim/startify.vim

" ====== Colors =========
colorscheme dracula
" fix color for types. Draculas is mpt nice

let g:load_doxygen_syntax=1
hi! def link Type Conceal
hi! def link String DraculaOrange
"hi Comment ctermfg=71

hi link doxygenSpecial Conceal
hi link doxygenParamName DiffChange
hi link doxygenParam Conceal
hi link doxygenParamDirection Conceal
hi link doxygenSmallSpecial Conceal
hi link doxygenComment Comment
hi link doxygenBrief Comment
hi link doxygenSpecialOnelineDesc Comment
hi link doxygenSpecialTypeOnelineDesc Comment
hi link doxygenHeaderline Comment

hi link LspCxxHlSymVariable Number
hi link LspCxxHlSymParameter Number
hi link LspCxxHlSymField Conceal

hi! link SpecialComment Conceal

" ======== Keys ==========
source ~/.config/nvim/keys.vim

nm <silent> <F1> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name")
    \ . '> trans<' . synIDattr(synID(line("."),col("."),0),"name")
    \ . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name")
    \ . ">"<CR>
