"                    _ _                       _           
" _ __   ___ _ __ __| | |_ _ __ ___  _____   _(_)_ __ ___  
"| '_ \ / _ \ '__/ _` | __| '__/ _ \/ _ \ \ / / | '_ ` _ \ 
"| | | |  __/ | | (_| | |_| | |  __/  __/\ V /| | | | | | |
"|_| |_|\___|_|  \__,_|\__|_|  \___|\___(_)_/ |_|_| |_| |_|
"                                                          
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0

let g:NERDTreeGitStatusShowIgnored = 1 " a heavy feature may cost much more time. default: 0
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeGitStatusUntrackedFilesMode = 'all' " a heave feature too. default: normal
let g:NERDTreeGitStatusShowClean = 1 " default: 0
let g:NERDTreeGitStatusConcealBrackets = 1 " default: 0
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

                
