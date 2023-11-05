let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" Minimap
"Plug 'severin-lemaignan/vim-minimap'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" nerdtree git plugin
Plug 'Xuyuanp/nerdtree-git-plugin'
" fuzzy finder
"Plug 'kien/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" git
Plug 'tpope/vim-fugitive'
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'
" tagbar
Plug 'preservim/tagbar'
" syntax checker
Plug 'vim-syntastic/syntastic'
" startify
Plug 'mhinz/vim-startify'
" battery
Plug 'lambdalisue/battery.vim'
" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airlin:xe-themes'
" codi 
" Semantic highlighting
"Plug 'arakashic/chromatica.nvim'
"Plug 'ChristianChiarulli/codi.vim'
" Highlighting for c
"Plug 'bbchung/clighter'
" auto complete
"Plug 'Valloric/YouCompleteMe' , { 'do': './install.py --clang-completer' }
" dracula theme
Plug 'dracula/vim', {'as':'dracula'}
" InitialiPze plugin system
call plug#end()


