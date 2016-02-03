function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set nu
  else
    set rnu
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>