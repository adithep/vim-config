if neobundle#tap('vim-operator-surround') "{{{
    nmap <silent>sa <Plug>(operator-surround-append)
    nmap <silent>sd <Plug>(operator-surround-delete)
    nmap <silent>sr <Plug>(operator-surround-replace)
    nmap <silent>sc <Plug>(operator-surround-replace)
"}}}
if neobundle#tap('vim-projectroot') "{{{
    let g:rootmarkers = ['package.js', 'package.json', 'Dockerfile', '.git', '.meteor']
    call neobundle#untap()
endif

"}}}