":help quickfix :help text-objects :help mark-motions

call pathogen#helptags()
set nocompatible " incompatibility setting with vi

execute pathogen#infect()
syntax on
if has("autocmd")
  filetype plugin indent on
endif

let g:pathogen_disabled=["YouCompleteMe", "vim-racer", "tern_for_vim"]

" include 
source ~/.config/nvim/main_conf.vim
source ~/.config/nvim/filetype.vim
source ~/.config/nvim/functions.vim
source ~/.config/nvim/nerdtree_ctrlp_conf.vim
source ~/.config/nvim/slime_conf.vim
source ~/.config/nvim/emmet.vim
