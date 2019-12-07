" =============================================================================
" Filename: autoload/lightline/colorscheme/codedark.vim
" Author: artanikin
" License: MIT License
" Last Change: 2019/12/05 12:26:00
" =============================================================================

let s:term_red = 204
let s:term_green = 114
let s:term_yellow = 180
let s:term_blue = 39
let s:term_purple = 170
let s:term_white = 145
let s:term_black = 235
let s:term_grey = 236

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ '#262626', '#608B4E', s:term_black, s:term_green, 'bold' ], [ '#608B4E', '#262626', s:term_green, s:term_black ] ]
let s:p.normal.right = [ [ '#262626', '#608B4E', s:term_black, s:term_green ], [ '#D4D4D4', '#3C3C3C', s:term_white, s:term_grey ], [ '#608B4E', '#262626', s:term_green, s:term_black ] ]
let s:p.inactive.right = [ [ '#262626', '#569CD6', s:term_black, s:term_blue], [ '#D4D4D4', '#3C3C3C', s:term_white, s:term_grey ] ]
let s:p.inactive.left = s:p.inactive.right[1:]
" her
let s:p.insert.left = [ [ '#262626', '#569CD6', s:term_black, s:term_blue, 'bold' ], [ '#569CD6', '#262626', s:term_blue, s:term_black ] ]
let s:p.insert.right = [ [ '#262626', '#569CD6', s:term_black, s:term_blue ], [ '#D4D4D4', '#3C3C3C', s:term_white, s:term_grey ], [ '#569CD6', '#262626', s:term_blue, s:term_black ] ]
let s:p.replace.left = [ [ '#262626', '#D16969', s:term_black, s:term_red, 'bold' ], [ '#D16969', '#262626', s:term_red, s:term_black ] ]
let s:p.replace.right = [ [ '#262626', '#D16969', s:term_black, s:term_red, 'bold' ], s:p.normal.right[1], [ '#D16969', '#262626', s:term_red, s:term_black ] ]
let s:p.visual.left = [ [ '#262626', '#C586C0', s:term_black, s:term_purple, 'bold' ], [ '#C586C0', '#262626', s:term_purple, s:term_black ] ]
let s:p.visual.right = [ [ '#262626', '#C586C0', s:term_black, s:term_purple, 'bold' ], s:p.normal.right[1], [ '#C586C0', '#262626', s:term_purple, s:term_black ] ]
let s:p.normal.middle = [ [ '#D4D4D4', '#262626', s:term_white, s:term_black ] ]
let s:p.insert.middle = s:p.normal.middle
let s:p.replace.middle = s:p.normal.middle
let s:p.tabline.left = [ s:p.normal.left[1] ]
let s:p.tabline.tabsel = [ s:p.normal.left[0] ]
let s:p.tabline.middle = s:p.normal.middle
let s:p.tabline.right = [ s:p.normal.left[1] ]
let s:p.normal.error = [ [ '#262626', '#D16969', s:term_black, s:term_red ] ]
let s:p.normal.warning = [ [ '#262626', '#D7BA7D', s:term_black, s:term_yellow ] ]

let g:lightline#colorscheme#codedark#palette = lightline#colorscheme#fill(s:p)
