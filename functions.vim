"nnoremap <leader>QQ :call ExitAndSaveMySession()<cr>
nnoremap <leader>q :call ExitAndSaveMySession()<cr>
func! ExitAndSaveMySession()
  exec "mksession! ~/.mysession.vim"
  qall
endfunc

""tabsname
if exists("+showtabline")
     function RTabLine()
         let s = ''
         let t = tabpagenr()
         let i = 1
         while i <= tabpagenr('$')
             let buflist = tabpagebuflist(i)
             let winnr = tabpagewinnr(i)
             let s .= '%' . i . 'T'
             let s .= (i == t ? '%1*' : '%2*')
             let s .= ' '
             let s .= i . ')'
             let s .= ' %*'
             let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
             let file = bufname(buflist[winnr - 1])
             let file = fnamemodify(file, ':p:t')
             if file == ''
                 let file = '[No Name]'
             endif
             let s .= file

             """"""""""""""""""""""""""""""""""""
             let m = 0 " &modified counter
             for b in buflist
               " check and ++ tab's &modified count
               if getbufvar( b, "&modified" )
                 let m += 1
               endif
             endfor
             " add modified label [n+] where n pages in tab are modified
             if m > 0
               "let s .= '[' . m . '+]'
               let s.= '+ '
             endif
             """"""""""""""""""""""""""""""""""""

             let i = i + 1
         endwhile

         let s .= '%T%#TabLineFill#%='
         let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
         return s
     endfunction
     set stal=2
     set tabline=%!RTabLine()
endif
