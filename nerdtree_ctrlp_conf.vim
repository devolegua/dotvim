" Set NerdTree
" set autochdir
"nnoremap <leader>NN :NERDTreeToggle<cr>
nnoremap ,n :NERDTreeToggle<cr>

let NERDTreeWinSize = 22
let NERDTreeDirArrows=1 " Показываем стрелки в директориях
let NERDTreeMinimalUI=1
let NERDTreeChDirMode=2
let NERDTreeShowHidden=1
let NERDTreeSortOrder=[ '^\..*/$', '/$', '^\..*', '^_.*', '\.vim$', '\.js$', '\.ts$', '\.rs$', '\.h$', '\.c$', '\.s$', '\.ll$', '\.txt$', '\.html$', '\.json$', '*', '\.md$', 'README.*', '.*\.lock$', '^.*file$']
let NERDTreeHijackNetrw=0
let NERDTreeIgnore = ['\.class$', '\.ico$', '\.png$', '\.db$', '\.jpg$', '\.o$', '\.so$', '\.cmi', '\.cmo', '\.cmx', 'node_modules']


" ctrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
"let g:ctrlp_by_filename = 0
"let g:ctrlp_regexp = 1
let g:ctrlp_match_window = 'min:1,max:20'
" let g:ctrlp_custom_ignore = {
"             \ 'dir': 'target\',
"             \ 'file': '\v\.(so|o|png|db|jpg)$'
"             \ }
let g:ctrlp_root_markers=['.indent.pro', 'tags', 'README*', 'Cargo.toml', 'package.json', 'build.gradle']
set wildignore+=*/target/**
set wildignore+=*/node_modules/**
" from some blog
"let g:ctrlp_match_window = 'bottom,order:ttb'
" let g:ctrlp_switch_buffer = 0  "  always open files in new buffers
