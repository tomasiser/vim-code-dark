" ============================================================
" codedark
"
" URL:
" Author: Clay Dunston
" License: MIT
" Last Change: 2017/10/11 15:47
" ============================================================

let s:p = {"normal": {}, "inactive": {}, "insert": {}, "replace": {}, "visual": {}, "tabline": {} }

let s:p.normal.left = [[["#608B4E", 65], ["", ]], [["#282c34", 236], ["", ]]]
let s:p.normal.middle = [[["#1E1E1E", 234], ["", ]]]
let s:p.normal.right = [[["#282c34", 236], ["", ]], [["#608B4E", 65], ["", ]]]
let s:p.normal.error = [[["#F44747", 203], ["", ]]]
let s:p.normal.warning = [[["#D16969", 167], ["", ]]]

let s:p.inactive.left = [[["#808080", 8], ["", ]], [["#808080", 8], ["", ]]]
let s:p.inactive.middle = [[["#808080", 8], ["", ]]]
let s:p.inactive.right = [[["#808080", 8], ["", ]], [["#808080", 8], ["", ]]]

let s:p.insert.left = [[["#569CD6", 74], ["", ]], [["#282c34", 236], ["", ]]]
let s:p.insert.middle = [[["#1E1E1E", 234], ["", ]]]
let s:p.insert.right = [[["#282c34", 236], ["", ]], [["#569CD6", 74], ["", ]]]

let s:p.replace.left = [[["#DCDCAA", 187], ["", ]], [["#282c34", 236], ["", ]]]
let s:p.replace.middle = [[["#1E1E1E", 234], ["", ]]]
let s:p.replace.right = [[["#282c34", 236], ["", ]], [["#DCDCAA", 187], ["", ]]]

let s:p.visual.left = [[["#C586C0", 175], ["", ]], [["#282c34", 236], ["", ]]]
let s:p.visual.middle = [[["#1E1E1E", 234], ["", ]]]
let s:p.visual.right = [[["#282c34", 236], ["", ]], [["#C586C0", 175], ["", ]]]

let s:p.tabline.left = [[["#808080", 8], ["", ]]]
let s:p.tabline.tabsel = [[["#282c34", 236], ["", ]]]
let s:p.tabline.middle = [[["#808080", 8], ["", ]]]
let s:p.tabline.right = [[["#282c34", 236], ["", ]]]

let g:lightline#colorscheme#codedark#palette = lightline#colorscheme#flatten(s:p)

" ===================================
" Generated by Estilo 1.3.3
" https://github.com/jacoborus/estilo
" ===================================
