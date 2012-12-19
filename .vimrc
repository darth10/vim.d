:colorscheme pablo
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

set tabstop=4
filetype plugin on
filetype plugin indent on
set nocompatible
syntax on

let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1

