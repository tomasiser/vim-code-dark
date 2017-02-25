" Vim Code Dark (color scheme)
" https://github.com/tomasiser/vim-code-dark

scriptencoding utf-8

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="codedark"

" Highlighting function (inspiration from https://github.com/chriskempson/base16-vim)
fun! <sid>hi(group, fg, bg, attr, sp)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . a:fg.cterm
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" . a:bg.cterm
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if !empty(a:sp)
    exec "hi " . a:group . " guisp=" . a:sp.gui
  endif
endfun

" ------------------
" Color definitions:
" ------------------

" General appearance colors:
" (some of them may be unused)

let s:cdNone = {'gui': 'NONE', 'cterm': 'NONE'}
let s:cdFront = {'gui': '#D4D4D4', 'cterm': '00'}
let s:cdBack = {'gui': '#1E1E1E', 'cterm': '00'}

let s:cdTabCurrent = {'gui': '#1E1E1E', 'cterm': '00'}
let s:cdTabOther = {'gui': '#2D2D2D', 'cterm': '00'}
let s:cdTabOutside = {'gui': '#252526', 'cterm': '00'}

let s:cdLeftDark = {'gui': '#252526', 'cterm': '00'}
let s:cdLeftMid = {'gui': '#373737', 'cterm': '00'}
let s:cdLeftLight = {'gui': '#3F3F46', 'cterm': '00'}

let s:cdPopupFront = {'gui': '#BBBBBB', 'cterm': '00'}
let s:cdPopupBack = {'gui': '#2D2D30', 'cterm': '00'}
let s:cdPopupHighlightBlue = {'gui': '#073655', 'cterm': '00'}
let s:cdPopupHighlightGray = {'gui': '#3D3D40', 'cterm': '00'}

let s:cdSplitLight = {'gui': '#898989', 'cterm': '00'}
let s:cdSplitDark = {'gui': '#444444', 'cterm': '00'}
let s:cdSplitThumb = {'gui': '#424242', 'cterm': '00'}

let s:cdCursorDarkDark = {'gui': '#222222', 'cterm': '00'}
let s:cdCursorDark = {'gui': '#51504F', 'cterm': '00'}
let s:cdCursorLight = {'gui': '#AEAFAD', 'cterm': '00'}
let s:cdSelection = {'gui': '#264F78', 'cterm': '00'}
let s:cdLineNumber = {'gui': '#5A5A5A', 'cterm': '00'}

let s:cdDiffRedDark = {'gui': '#4B1818', 'cterm': '00'}
let s:cdDiffRedLight = {'gui': '#6F1313', 'cterm': '00'}
let s:cdDiffRedLightLight = {'gui': '#FB0101', 'cterm': '00'}
let s:cdDiffGreenDark = {'gui': '#373D29', 'cterm': '00'}
let s:cdDiffGreenLight = {'gui': '#4B5632', 'cterm': '00'}

let s:cdSearchCurrent = {'gui': '#49545F', 'cterm': '00'}
let s:cdSearch = {'gui': '#4C4E50', 'cterm': '00'}

" Syntax colors:

if !exists("g:codedark_conservative")
    let g:codedark_conservative=0
endif

let s:cdGray = {'gui': '#808080', 'cterm': '00'}
let s:cdViolet = {'gui': '#646695', 'cterm': '00'}
let s:cdBlue = {'gui': '#569CD6', 'cterm': '00'}
let s:cdLightBlue = {'gui': '#9CDCFE', 'cterm': '00'}
if g:codedark_conservative | let s:cdLightBlue = s:cdFront | endif
let s:cdGreen = {'gui': '#608B4E', 'cterm': '00'}
let s:cdBlueGreen = {'gui': '#4EC9B0', 'cterm': '00'}
let s:cdLightGreen = {'gui': '#B5CEA8', 'cterm': '00'}
let s:cdRed = {'gui': '#F44747', 'cterm': '00'}
let s:cdOrange = {'gui': '#CE9178', 'cterm': '00'}
let s:cdLightRed = {'gui': '#D16969', 'cterm': '00'}
if g:codedark_conservative | let s:cdLightRed = s:cdOrange | endif
let s:cdYellowOrange = {'gui': '#D7BA7D', 'cterm': '00'}
let s:cdYellow = {'gui': '#DCDCAA', 'cterm': '00'}
if g:codedark_conservative | let s:cdYellow = s:cdFront | endif
let s:cdPink = {'gui': '#C586C0', 'cterm': '00'}
if g:codedark_conservative | let s:cdPink = s:cdBlue | endif

" Vim editor colors
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE, SPECIAL)
call <sid>hi('Normal', s:cdFront, s:cdBack, 'none', {})
call <sid>hi('ColorColumn', {}, s:cdCursorDarkDark, 'none', {})
call <sid>hi('Cursor', s:cdCursorDark, s:cdCursorLight, 'none', {})
call <sid>hi('CursorLine', {}, s:cdCursorDarkDark, 'none', {})
call <sid>hi('Directory', s:cdBlue, s:cdBack, 'none', {})
call <sid>hi('DiffAdd', {}, s:cdDiffGreenDark, 'none', {})
call <sid>hi('DiffChange', {}, s:cdDiffRedDark, 'none', {})
call <sid>hi('DiffDelete', {}, s:cdDiffRedLight, 'none', {})
call <sid>hi('DiffText', {}, s:cdDiffRedLight, 'none', {})
call <sid>hi('EndOfBuffer', s:cdLineNumber, s:cdBack, 'none', {})
call <sid>hi('ErrorMsg', s:cdRed, s:cdBack, 'none', {})
call <sid>hi('VertSplit', s:cdSplitDark, s:cdBack, 'none', {})
call <sid>hi('Folded', s:cdLeftLight, s:cdLeftDark, 'underline', {})
call <sid>hi('FoldColumn', s:cdLineNumber, s:cdBack, 'none', {})
call <sid>hi('SignColumn', {}, s:cdBack, 'none', {})
call <sid>hi('IncSearch', s:cdNone, s:cdSearchCurrent, 'none', {})
call <sid>hi('LineNr', s:cdLineNumber, s:cdBack, 'none', {})
call <sid>hi('CursorLineNr', s:cdPopupFront, s:cdBack, 'none', {})
call <sid>hi('MatchParen', s:cdNone, s:cdNone, 'inverse', {})
call <sid>hi('ModeMsg', s:cdFront, s:cdLeftDark, 'none', {})
call <sid>hi('MoreMsg', s:cdFront, s:cdLeftDark, 'none', {})
call <sid>hi('NonText', {}, s:cdLeftDark, 'none', {})
call <sid>hi('Pmenu', s:cdPopupFront, s:cdPopupBack, 'none', {})
call <sid>hi('PmenuSel', s:cdPopupFront, s:cdPopupHighlightBlue, 'none', {})
call <sid>hi('PmenuSbar', {}, s:cdPopupHighlightGray, 'none', {})
call <sid>hi('PmenuThumb', {}, s:cdPopupFront, 'none', {})
call <sid>hi('Question', s:cdBlue, s:cdBack, 'none', {})
call <sid>hi('Search', s:cdNone, s:cdSearch, 'none', {})
call <sid>hi('SpecialKey', s:cdBlue, s:cdNone, 'none', {})
"call <sid>hi('Spell***', s:cdNone, s:cdSearch, 'none', {})
call <sid>hi('StatusLine', s:cdFront, s:cdLeftMid, 'none', {})
call <sid>hi('StatusLineNC', s:cdFront, s:cdLeftDark, 'none', {})
call <sid>hi('TabLine', s:cdFront, s:cdTabOther, 'none', {})
call <sid>hi('TabLineFill', s:cdFront, s:cdTabOutside, 'none', {})
call <sid>hi('TabLineSel', s:cdFront, s:cdTabCurrent, 'none', {})
call <sid>hi('Title', s:cdNone, s:cdNone, 'bold', {})
call <sid>hi('Visual', s:cdNone, s:cdSelection, 'none', {})
call <sid>hi('VisualNOS', s:cdNone, s:cdSelection, 'none', {})
call <sid>hi('WarningMsg', s:cdOrange, s:cdBack, 'none', {})
call <sid>hi('WildMenu', s:cdNone, s:cdSelection, 'none', {})

call <sid>hi('Comment', s:cdGreen, {}, 'none', {})

call <sid>hi('Constant', s:cdBlue, {}, 'none', {})
call <sid>hi('String', s:cdOrange, {}, 'none', {})
call <sid>hi('Character', s:cdOrange, {}, 'none', {})
call <sid>hi('Number', s:cdLightGreen, {}, 'none', {})
call <sid>hi('Boolean', s:cdBlue, {}, 'none', {})
call <sid>hi('Float', s:cdLightGreen, {}, 'none', {})

call <sid>hi('Identifier', s:cdLightBlue, {}, 'none', {})
call <sid>hi('Function', s:cdYellow, {}, 'none', {})

call <sid>hi('Statement', s:cdPink, {}, 'none', {})
call <sid>hi('Conditional', s:cdPink, {}, 'none', {})
call <sid>hi('Repeat', s:cdPink, {}, 'none', {})
call <sid>hi('Label', s:cdPink, {}, 'none', {})
call <sid>hi('Operator', s:cdFront, {}, 'none', {})
call <sid>hi('Keyword', s:cdPink, {}, 'none', {})
call <sid>hi('Exception', s:cdPink, {}, 'none', {})

call <sid>hi('PreProc', s:cdPink, {}, 'none', {})
call <sid>hi('Include', s:cdPink, {}, 'none', {})
call <sid>hi('Define', s:cdPink, {}, 'none', {})
call <sid>hi('Macro', s:cdPink, {}, 'none', {})
call <sid>hi('PreCondit', s:cdPink, {}, 'none', {})

call <sid>hi('Type', s:cdBlue, {}, 'none', {})
call <sid>hi('StorageClass', s:cdBlue, {}, 'none', {})
call <sid>hi('Structure', s:cdBlue, {}, 'none', {})
call <sid>hi('Typedef', s:cdBlue, {}, 'none', {})

call <sid>hi('Special', s:cdFront, {}, 'none', {})
call <sid>hi('SpecialChar', s:cdFront, {}, 'none', {})
call <sid>hi('Tag', s:cdFront, {}, 'none', {})
call <sid>hi('Delimiter', s:cdFront, {}, 'none', {})
call <sid>hi('SpecialComment', s:cdFront, {}, 'none', {})
call <sid>hi('Debug', s:cdFront, {}, 'none', {})

call <sid>hi('Underlined', s:cdNone, {}, 'underline', {})

call <sid>hi('Ignore', s:cdFront, {}, 'none', {})

call <sid>hi('Error', s:cdNone, s:cdNone, 'undercurl', s:cdRed)

call <sid>hi('Todo', s:cdNone, s:cdLeftMid, 'none', {})

" HTML:
call <sid>hi('htmlTag', s:cdGray, {}, 'none', {})
call <sid>hi('htmlEndTag', s:cdGray, {}, 'none', {})
call <sid>hi('htmlTagName', s:cdBlue, {}, 'none', {})
call <sid>hi('htmlSpecialTagName', s:cdBlue, {}, 'none', {})
call <sid>hi('htmlArg', s:cdLightBlue, {}, 'none', {})

" CSS:
call <sid>hi('cssBraces', s:cdFront, {}, 'none', {})
call <sid>hi('cssInclude', s:cdPink, {}, 'none', {})
call <sid>hi('cssTagName', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssClassName', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssPseudoClass', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssPseudoClassId', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssPseudoClassLang', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssIdentifier', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssProp', s:cdLightBlue, {}, 'none', {})
call <sid>hi('cssDefinition', s:cdLightBlue, {}, 'none', {})
call <sid>hi('cssAttr', s:cdOrange, {}, 'none', {})
call <sid>hi('cssAttrRegion', s:cdOrange, {}, 'none', {})
call <sid>hi('cssColor', s:cdOrange, {}, 'none', {})
call <sid>hi('cssFunction', s:cdOrange, {}, 'none', {})
call <sid>hi('cssFunctionName', s:cdOrange, {}, 'none', {})
call <sid>hi('cssVendor', s:cdOrange, {}, 'none', {})
call <sid>hi('cssValueNumber', s:cdOrange, {}, 'none', {})
call <sid>hi('cssValueLength', s:cdOrange, {}, 'none', {})
call <sid>hi('cssUnitDecorators', s:cdOrange, {}, 'none', {})

" JavaScript:
call <sid>hi('jsVariableDef', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsFuncArgs', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsRegexpString', s:cdLightRed, {}, 'none', {})
call <sid>hi('jsThis', s:cdBlue, {}, 'none', {})

" Ruby:
call <sid>hi('rubyClassNameTag', s:cdBlueGreen, {}, 'none', {})

