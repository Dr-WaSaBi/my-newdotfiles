"     _       _ __        _
"    (_)___  (_) /__   __(_)___ ___
"   / / __ \/ / __/ | / / / __ `__ \
"  / / / / / / /__| |/ / / / / / / /
" /_/_/ /_/_/\__(_)___/_/_/ /_/ /_/
"
"  *************************************************************
"  my neovim init.vim config file
"  Russell R. Riker (aka: Dr. WaSaBi)
"  *************************************************************

" First load all my plugins
source ~/.config/nvim/plugins-to-load.vim

" Second, run any custom config files that my plugins need
source ~/.config/nvim/fzf-plugin-settings.vim

" Lastly, after plugins have been setup, then do my basic 
" customizing of nvim settings that I like.
source ~/.config/nvim/nvim-basic-settings.vim
