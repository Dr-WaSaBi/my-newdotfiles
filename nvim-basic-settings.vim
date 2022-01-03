" ****************************************************************************************************
"                _                 __               _                      __  __  _
"    ____ _   __(_)___ ___        / /_  ____ ______(_)____      ________  / /_/ /_(_)___  ____ ______
"   / __ \ | / / / __ `__ \______/ __ \/ __ `/ ___/ / ___/_____/ ___/ _ \/ __/ __/ / __ \/ __ `/ ___/
"  / / / / |/ / / / / / / /_____/ /_/ / /_/ (__  ) / /__/_____(__  )  __/ /_/ /_/ / / / / /_/ (__  )
" /_/ /_/|___/_/_/ /_/ /_/     /_.___/\__,_/____/_/\___/     /____/\___/\__/\__/_/_/ /_/\__, /____/
"                                                                                      /____/
" ****************************************************************************************************
" My basic settings file. 


set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = $runtimepath
source ~/.vimrc

" Some of my settings, need to figure out how to do these things for only some
" file types.  like txt and mkd file, wouldn't really want this.
set tabstop=4
set expandtab

" Should put us in hybrid numbering, meaning in normal mode numbering will be
" relative, but when in insert mode, numbers will be absolute
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" set it to treat gemini files like markdown files
au! BufRead,BufNewFile *.gmi set filetype=markdown

" turn spelling on for text based documents
autocmd FileType txt,tex,latex,markdown setlocal spell spelllang=en_us

" copy to the system clipboard
" set clipboard+=unnamedplus

" set the vimwiki folder path and file type
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

set termguicolors       " turn on true colors, since ny term supports that
" colorscheme cobalt2     " set the colorscheme

"set cursorline          " Should kind of highlight what ever line the cursor is on, to make it easy to find
set colorcolumn=100     " Put a highlighted colume at the 100 space mark.  Just so we can see a really long line, like this one.

set wildmode=longest,list,full

" ***********************************************************
" ****************** basic remap keys ***********************
" ***********************************************************
" remap the split window motion keybindings
" stole these from BrodieRobertson, just wish I could get them to work as CTRL

" Move to the window the left
map <A-h> <C-w>h        

" Move to the window to the below
map <A-j> <C-w>j

" Move to the window the the above
map <A-k> <C-w>k

" Move to the window to right
map <A:l> <C-w>l

" keys to change the size of windows
nnoremap <Leader>J :resize +5<CR>
nnoremap <Leader>K :resize -5<CR>
nnoremap <Leader>H :vertical resize -5<CR>
nnoremap <Leader>L :vertical resize +5<CR>

" nerdtree file manager
:nmap <silent> <C-D> :NERDTreeToggle<CR>

" Should show a list of the buffers that opened
:nnoremap <F5> :buffers<CR>:buffer<Space>  

" fzf keybindings. 
map <C-f> :Files<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>

" GitGutter Customization {{{
let g:gitgutter_sign_added = '👍'
let g:gitgutter_sign_modified = '🤞'
let g:gitgutter_sign_modified_first_line = '🤞'
let g:gitgutter_sign_removed = '👎'
let g:gitgutter_sign_removed_first_line = '👎'

