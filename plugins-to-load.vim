" ***********************************************************
" ********************* install pluggins ********************
" ***********************************************************
"
call plug#begin('~/.vim/plugged')
        Plug 'SirVer/ultisnips'
        Plug 'honza/vim-snippets'
        Plug 'preservim/nerdtree'                           " file manager 
        Plug 'roxma/nvim-yarp'
        Plug 'tpope/vim-fugitive'                           " git 
        Plug 'tpope/vim-rhubarb'
        Plug 'vim-airline/vim-airline'                      " cool status bar
        Plug 'airblade/vim-gitgutter'                       " git changes
        Plug 'vim-airline/vim-airline-themes'               " themes for status bar
        Plug 'itchyny/lightline.vim'
        Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }  " golang
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy finder
        Plug 'junegunn/fzf.vim'                             " fuzzy finder
        Plug 'airblade/vim-rooter'
        Plug 'vimwiki/vimwiki'
        Plug 'gertjanreynaert/cobalt2-vim-theme'        " added coblt2 theme
call plug#end()


