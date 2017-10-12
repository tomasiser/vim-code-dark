" =============================================================================
" Filename: autoload/lightline/colorscheme/codedark.vim
" Author: (tomasiser/vim-code-dark) 🍴ed by Clay Dunston
" License: MIT License
" Last Change: 2017/10/11.
" =============================================================================
let s:base03 = '#fafafa'
let s:base023 = '#dfdfdf'
let s:base02 = '#c8c8c8'
let s:base01 = '#b4b4b4'
let s:base00 = '#808080'
let s:base0 = '#666666'
let s:base1 = '#555555'
let s:base2 = '#4f4f4f'
let s:base3 = '#4d4d4c'


let s:cdBack = '#1E1E1E'
let s:cdDarkGray = '#505050'
let s:cdFront = '#D4D4D4'
let s:cdGray = '#808080'
let s:cdViolet = '#646695'
let s:cdBlue = '#569CD6'
let s:cdDarkBlue = '#223E55'
let s:cdLightBlue = '#9CDCFE'
let s:cdGreen = '#608B4E'
let s:cdBlueGreen = '#4EC9B0'
let s:cdLightGreen = '#B5CEA8'
let s:cdRed = '#F44747'
let s:cdOrange = '#CE9178'
let s:cdLightRed = '#D16969'
let s:cdYellowOrange = '#D7BA7D'
let s:cdYellow = '#DCDCAA'
let s:cdPink = '#C586C0'

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:cdFront, s:cdBlue ], [ s:base3, s:base01 ] ]
let s:p.normal.right = [ [ s:cdFront, s:cdBlue ], [ s:base1, s:base01 ] ]
let s:p.normal.middle = [ [ s:cdFront, s:cdBack ] ]
let s:p.insert.left = [ [ s:cdFront, s:cdGreen ], [ s:base3, s:base01 ] ]
let s:p.insert.right = [ [ s:cdFront, s:cdGreen ], [ s:base3, s:base01 ] ]
let s:p.replace.left = [ [ s:cdFront, s:cdYellowOrange ], [ s:base3, s:base01 ] ]
let s:p.replace.right = [ [ s:cdFront, s:cdYellowOrange ], [ s:base3, s:base01 ] ]
let s:p.visual.left = [ [ s:cdFront, s:cdPink ], [ s:base3, s:base01 ] ]
let s:p.visual.right = [ [ s:cdFront, s:cdPink ], [ s:base3, s:base01 ] ]
let s:p.inactive.left =  [ [ s:cdFront, s:cdGray ], [ s:base00, s:base03 ] ]
let s:p.inactive.right = [ [ s:cdFront, s:cdGray ], [ s:base00, s:base02 ] ]
let s:p.inactive.middle = [ [ s:cdFront, s:cdGray ] ]
let s:p.tabline.left = [ [ s:cdFront, s:cdDarkGray ] ]
let s:p.tabline.tabsel = [ [ s:cdFront, s:cdDarkGray ] ]
let s:p.tabline.middle = [ [ s:cdFront, s:cdBack ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:cdFront, s:cdRed ] ]
let s:p.normal.warning = [ [ s:cdFront, s:cdLightRed ] ]


let g:lightline#colorscheme#codedark#palette = lightline#colorscheme#flatten(s:p)
