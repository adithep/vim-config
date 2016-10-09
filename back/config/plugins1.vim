let s:fip = {}
let s:omnifuncs = {}
let s:omnifuncs.javascript = [ 'javascriptcomplete#CompleteJS' ]

if neobundle#tap('vim-operator-surround') "{{{
    nmap <silent>sa <Plug>(operator-surround-append)
    nmap <silent>sd <Plug>(operator-surround-delete)
    nmap <silent>sr <Plug>(operator-surround-replace)
    nmap <silent>sc <Plug>(operator-surround-replace)
endif
"}}}
if neobundle#tap('vim-projectroot') "{{{
    let g:rootmarkers = ['package.js', 'package.json', 'Dockerfile', '.git', '.meteor']
    call neobundle#untap()
endif

"}}}

if neobundle#tap('jspc.vim') "{{{
    let s:indexdefault = index(s:omnifuncs.javascript, 'javascriptcomplete#CompleteJS')
	call remove(s:omnifuncs.javascript, s:indexdefault)
	call add(s:omnifuncs.javascript, 'jspc#omni')
	call neobundle#untap()
endif

"}}}

if neobundle#tap('vim-better-javascript-completion') "{{{
    call insert(s:omnifuncs.javascript, 'js#CompleteJS')
	call neobundle#untap()
endif

if neobundle#tap('dbext.vim') "{{{
    let g:dbext_default_profile_PG = 'type=PGSQL:user=postgres:dbname=postgres:host=postgres'
    autocmd BufRead *.sql DBSetOption profile=PG
  call neobundle#untap()
endif

if neobundle#tap('deoplete.nvim') "{{{
  call dko#InitObject('g:deoplete#omni#functions')
  " Not extending, instead pluck first item from list since deoplete only
  " supports one omnifunc
  call extend(g:deoplete#omni#functions, map(copy(s:omnifuncs), 'v:val[0]'))

  " --------------------------------------------------------------------------
  " Input patterns
  " --------------------------------------------------------------------------

  " Patterns that bypass to &omnifunc
  call dko#InitObject('g:deoplete#omni_patterns')
  call extend(g:deoplete#omni_patterns, s:fip)

  " Completion engine input patterns
  " - Python 3 regex
  let s:deo_patterns = {}
  " not quite...
  " if s:is_php_enabled
  "   let s:deo_patterns.php = [
  "         \   '[^. \t0-9]\.\w*',
  "         \   '[^. \t0-9]\->\w*',
  "         \   '[a-zA-Z_]\::\w*',
  "         \ ]
  " endif
  call dko#InitObject('g:deoplete#omni#input#patterns')
  call extend(g:deoplete#omni#input#patterns, s:deo_patterns)
  call neobundle#untap()
endif

"}}}
