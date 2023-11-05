" _              _                      _           
"| |_ __ _  __ _| |__   __ _ _ ____   _(_)_ __ ___  
"| __/ _` |/ _` | '_ \ / _` | '__\ \ / / | '_ ` _ \ 
"| || (_| | (_| | |_) | (_| | | _ \ V /| | | | | | |
" \__\__,_|\__, |_.__/ \__,_|_|(_) \_/ |_|_| |_| |_|
"          |___/                                    
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }

if executable('ripper-tags')
  let g:tagbar_type_ruby = {
      \ 'kinds'      : ['m:modules',
                      \ 'c:classes',
                      \ 'C:constants',
                      \ 'F:singleton methods',
                      \ 'f:methods',
                      \ 'a:aliases'],
      \ 'kind2scope' : { 'c' : 'class',
                       \ 'm' : 'class' },
      \ 'scope2kind' : { 'class' : 'c' },
      \ 'ctagsbin'   : 'ripper-tags',
      \ 'ctagsargs'  : ['-f', '-']
      \ }
endif

