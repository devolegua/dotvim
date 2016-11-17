":help quickfix :help text-objects :help mark-motions

call pathogen#helptags()
set nocompatible " incompatibility setting with vi

execute pathogen#infect()
syntax on
if has("autocmd")
  filetype plugin indent on
endif

let g:pathogen_disabled=["YouCompleteMe", "vim-racer", "tern_for_vim"]
let g:loaded_youcompleteme = 1

" include 
source /home/oleh/.config/nvim/main_conf.vim
source /home/oleh/.config/nvim/filetype.vim
source /home/oleh/.config/nvim/functions.vim
source /home/oleh/.config/nvim/nerdtree_ctrlp_conf.vim
source /home/oleh/.config/nvim/slime_conf.vim
