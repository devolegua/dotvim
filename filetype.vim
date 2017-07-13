au BufRead,BufNewFile /etc/nginx/* set ft=nginx
au BufRead,BufNewFile nginx.conf set ft=nginx
au BufRead,BufNewFile *.s set filetype=gas
au BufRead,BufNewFile *.asm set filetype=fasm
au BufRead,BufNewFile *.ASM set filetype=fasm

let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

" LLVM Makefile highlighting mode
augroup filetype
  au! BufRead,BufNewFile *Makefile*     set filetype=make
augroup END

hi IndentGuidesOdd  ctermbg=white
hi IndentGuidesEven ctermbg=lightgrey

augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END
