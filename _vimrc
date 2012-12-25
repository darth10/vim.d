function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-x>\<C-i>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

:colorscheme murphy
:set winaltkeys=yes
:set bs=2
:set guioptions-=T
:set ls=2
:set ruler
:syntax on

au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

