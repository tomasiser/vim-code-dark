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
if &t_Co >= 256
    let g:codedark_term256=1
elseif !exists("g:codedark_term256")
    let g:codedark_term256=0
endif
fun! <sid>hi(group, fg, bg, attr, sp)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . (g:codedark_term256 ? a:fg.cterm256 : a:fg.cterm)
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" . (g:codedark_term256 ? a:bg.cterm256 : a:bg.cterm)
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

" Terminal colors (base16):
let s:cterm00 = "00"
let s:cterm03 = "08"
let s:cterm05 = "07"
let s:cterm07 = "15"
let s:cterm08 = "01"
let s:cterm0A = "03"
let s:cterm0B = "02"
let s:cterm0C = "06"
let s:cterm0D = "04"
let s:cterm0E = "05"
if exists('base16colorspace') && base16colorspace == "256"
  let s:cterm01 = "18"
  let s:cterm02 = "19"
  let s:cterm04 = "20"
  let s:cterm06 = "21"
  let s:cterm09 = "16"
  let s:cterm0F = "17"
else
  let s:cterm01 = "00"
  let s:cterm02 = "08"
  let s:cterm04 = "07"
  let s:cterm06 = "07"
  let s:cterm09 = "06"
  let s:cterm0F = "03"
endif

" General appearance colors:
" (some of them may be unused)

let s:cdNone = {'gui': 'NONE', 'cterm': 'NONE', 'cterm256': 'NONE'}
let s:cdFront = {'gui': '#D4D4D4', 'cterm': s:cterm05, 'cterm256': '188'}
let s:cdBack = {'gui': '#1E1E1E', 'cterm': s:cterm00, 'cterm256': '234'}

let s:cdTabCurrent = {'gui': '#1E1E1E', 'cterm': s:cterm00, 'cterm256': '234'}
let s:cdTabOther = {'gui': '#2D2D2D', 'cterm': s:cterm01, 'cterm256': '236'}
let s:cdTabOutside = {'gui': '#252526', 'cterm': s:cterm01, 'cterm256': '235'}

let s:cdLeftDark = {'gui': '#252526', 'cterm': s:cterm01, 'cterm256': '235'}
let s:cdLeftMid = {'gui': '#373737', 'cterm': s:cterm03, 'cterm256': '237'}
let s:cdLeftLight = {'gui': '#3F3F46', 'cterm': s:cterm03, 'cterm256': '238'}

let s:cdPopupFront = {'gui': '#BBBBBB', 'cterm': s:cterm06, 'cterm256': '250'}
let s:cdPopupBack = {'gui': '#2D2D30', 'cterm': s:cterm01, 'cterm256': '236'}
let s:cdPopupHighlightBlue = {'gui': '#073655', 'cterm': s:cterm0D, 'cterm256': '24'}
let s:cdPopupHighlightGray = {'gui': '#3D3D40', 'cterm': s:cterm03, 'cterm256': '237'}

let s:cdSplitLight = {'gui': '#898989', 'cterm': s:cterm04, 'cterm256': '245'}
let s:cdSplitDark = {'gui': '#444444', 'cterm': s:cterm03, 'cterm256': '238'}
let s:cdSplitThumb = {'gui': '#424242', 'cterm': s:cterm04, 'cterm256': '238'}

let s:cdCursorDarkDark = {'gui': '#222222', 'cterm': s:cterm01, 'cterm256': '235'}
let s:cdCursorDark = {'gui': '#51504F', 'cterm': s:cterm03, 'cterm256': '239'}
let s:cdCursorLight = {'gui': '#AEAFAD', 'cterm': s:cterm04, 'cterm256': '145'}
let s:cdSelection = {'gui': '#264F78', 'cterm': s:cterm03, 'cterm256': '24'}
let s:cdLineNumber = {'gui': '#5A5A5A', 'cterm': s:cterm04, 'cterm256': '240'}

let s:cdDiffRedDark = {'gui': '#4B1818', 'cterm': s:cterm08, 'cterm256': '52'}
let s:cdDiffRedLight = {'gui': '#6F1313', 'cterm': s:cterm08, 'cterm256': '52'}
let s:cdDiffRedLightLight = {'gui': '#FB0101', 'cterm': s:cterm08, 'cterm256': '09'}
let s:cdDiffGreenDark = {'gui': '#373D29', 'cterm': s:cterm0B, 'cterm256': '237'}
let s:cdDiffGreenLight = {'gui': '#4B5632', 'cterm': s:cterm09, 'cterm256': '58'}

let s:cdSearchCurrent = {'gui': '#4B5632', 'cterm': s:cterm09, 'cterm256': '58'} 
let s:cdSearch = {'gui': '#264F78', 'cterm': s:cterm03, 'cterm256': '24'}

" Syntax colors:

if !exists("g:codedark_conservative")
    let g:codedark_conservative=0
endif

let s:cdGray = {'gui': '#808080', 'cterm': s:cterm04, 'cterm256': '08'}
let s:cdViolet = {'gui': '#646695', 'cterm': s:cterm04, 'cterm256': '60'}
let s:cdBlue = {'gui': '#569CD6', 'cterm': s:cterm0D, 'cterm256': '75'}
let s:cdDarkBlue = {'gui': '#223E55', 'cterm': s:cterm0D, 'cterm256': '73'}
let s:cdLightBlue = {'gui': '#9CDCFE', 'cterm': s:cterm0C, 'cterm256': '117'}
if g:codedark_conservative | let s:cdLightBlue = s:cdFront | endif
let s:cdGreen = {'gui': '#6A9955', 'cterm': s:cterm0B, 'cterm256': '65'}
let s:cdBlueGreen = {'gui': '#4EC9B0', 'cterm': s:cterm0F, 'cterm256': '43'}
let s:cdLightGreen = {'gui': '#B5CEA8', 'cterm': s:cterm09, 'cterm256': '151'}
let s:cdRed = {'gui': '#F44747', 'cterm': s:cterm08, 'cterm256': '203'}
let s:cdOrange = {'gui': '#CE9178', 'cterm': s:cterm0F, 'cterm256': '173'}
let s:cdLightRed = {'gui': '#D16969', 'cterm': s:cterm08, 'cterm256': '167'}
if g:codedark_conservative | let s:cdLightRed = s:cdOrange | endif
let s:cdYellowOrange = {'gui': '#D7BA7D', 'cterm': s:cterm0A, 'cterm256': '179'}
let s:cdYellow = {'gui': '#DCDCAA', 'cterm': s:cterm0A, 'cterm256': '187'}
if g:codedark_conservative | let s:cdYellow = s:cdFront | endif
let s:cdPink = {'gui': '#C586C0', 'cterm': s:cterm0E, 'cterm256': '176'}
if g:codedark_conservative | let s:cdPink = s:cdBlue | endif

" Vim editor colors
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE, SPECIAL)
call <sid>hi('Normal', s:cdFront, s:cdBack, 'none', {})
call <sid>hi('ColorColumn', {}, s:cdCursorDarkDark, 'none', {})
call <sid>hi('Cursor', s:cdCursorDark, s:cdCursorLight, 'none', {})
call <sid>hi('CursorLine', {}, s:cdCursorDarkDark, 'none', {})
call <sid>hi('CursorColumn', {}, s:cdCursorDarkDark, 'none', {})
call <sid>hi('Directory', s:cdBlue, s:cdBack, 'none', {})
call <sid>hi('DiffAdd', {}, s:cdDiffGreenLight, 'none', {})
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
call <sid>hi('MatchParen', s:cdNone, s:cdCursorDark, 'none', {})
call <sid>hi('ModeMsg', s:cdFront, s:cdLeftDark, 'none', {})
call <sid>hi('MoreMsg', s:cdFront, s:cdLeftDark, 'none', {})
call <sid>hi('NonText', s:cdLineNumber, s:cdBack, 'none', {})
call <sid>hi('Pmenu', s:cdPopupFront, s:cdPopupBack, 'none', {})
call <sid>hi('PmenuSel', s:cdPopupFront, s:cdPopupHighlightBlue, 'none', {})
call <sid>hi('PmenuSbar', {}, s:cdPopupHighlightGray, 'none', {})
call <sid>hi('PmenuThumb', {}, s:cdPopupFront, 'none', {})
call <sid>hi('Question', s:cdBlue, s:cdBack, 'none', {})
call <sid>hi('Search', s:cdNone, s:cdSearch, 'none', {})
call <sid>hi('SpecialKey', s:cdBlue, s:cdNone, 'none', {})
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

" Legacy groups for official git.vim and diff.vim syntax
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete

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

call <sid>hi('Special', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('SpecialChar', s:cdFront, {}, 'none', {})
call <sid>hi('Tag', s:cdFront, {}, 'none', {})
call <sid>hi('Delimiter', s:cdFront, {}, 'none', {})
call <sid>hi('SpecialComment', s:cdGreen, {}, 'none', {})
call <sid>hi('Debug', s:cdFront, {}, 'none', {})

call <sid>hi('Underlined', s:cdNone, {}, 'underline', {})
call <sid>hi("Conceal", s:cdFront, s:cdBack, 'none', {})

call <sid>hi('Ignore', s:cdFront, {}, 'none', {})

call <sid>hi('Error', s:cdRed, s:cdBack, 'undercurl', s:cdRed)

call <sid>hi('Todo', s:cdNone, s:cdLeftMid, 'none', {})

call <sid>hi('SpellBad', s:cdRed, s:cdBack, 'undercurl', s:cdRed)
call <sid>hi('SpellCap', s:cdRed, s:cdBack, 'undercurl', s:cdRed)
call <sid>hi('SpellRare', s:cdRed, s:cdBack, 'undercurl', s:cdRed)
call <sid>hi('SpellLocal', s:cdRed, s:cdBack, 'undercurl', s:cdRed)


" Neovim Treesitter:
call <sid>hi('TSError', s:cdRed, {}, 'none', {})
call <sid>hi('TSPunctDelimiter', s:cdFront, {}, 'none', {})
call <sid>hi('TSPunctBracket', s:cdFront, {}, 'none', {})
call <sid>hi('TSPunctSpecial', s:cdFront, {}, 'none', {})
" Constant
call <sid>hi('TSConstant', s:cdYellow, {}, 'none', {})
call <sid>hi('TSConstBuiltin', s:cdBlue, {}, 'none', {})
call <sid>hi('TSConstMacro', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('TSStringRegex', s:cdOrange, {}, 'none', {})
call <sid>hi('TSString', s:cdOrange, {}, 'none', {})
call <sid>hi('TSStringEscape', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('TSCharacter', s:cdOrange, {}, 'none', {})
call <sid>hi('TSNumber', s:cdLightGreen, {}, 'none', {})
call <sid>hi('TSBoolean', s:cdBlue, {}, 'none', {})
call <sid>hi('TSFloat', s:cdLightGreen, {}, 'none', {})
call <sid>hi('TSAnnotation', s:cdYellow, {}, 'none', {})
call <sid>hi('TSAttribute', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('TSNamespace', s:cdBlueGreen, {}, 'none', {})
" Functions
call <sid>hi('TSFuncBuiltin', s:cdYellow, {}, 'none', {})
call <sid>hi('TSFunction', s:cdYellow, {}, 'none', {})
call <sid>hi('TSFuncMacro', s:cdYellow, {}, 'none', {})
call <sid>hi('TSParameter', s:cdLightBlue, {}, 'none', {})
call <sid>hi('TSParameterReference', s:cdLightBlue, {}, 'none', {})
call <sid>hi('TSMethod', s:cdYellow, {}, 'none', {})
call <sid>hi('TSField', s:cdLightBlue, {}, 'none', {})
call <sid>hi('TSProperty', s:cdLightBlue, {}, 'none', {})
call <sid>hi('TSConstructor', s:cdBlueGreen, {}, 'none', {})
" Keywords
call <sid>hi('TSConditional', s:cdPink, {}, 'none', {})
call <sid>hi('TSRepeat', s:cdPink, {}, 'none', {})
call <sid>hi('TSLabel', s:cdLightBlue, {}, 'none', {})
call <sid>hi('TSKeyword', s:cdBlue, {}, 'none', {})
call <sid>hi('TSKeywordFunction', s:cdPink, {}, 'none', {})
call <sid>hi('TSKeywordOperator', s:cdBlue, {}, 'none', {})
call <sid>hi('TSOperator', s:cdFront, {}, 'none', {})
call <sid>hi('TSException', s:cdPink, {}, 'none', {})
call <sid>hi('TSType', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('TSTypeBuiltin', s:cdBlue, {}, 'none', {})
call <sid>hi('TSStructure', s:cdLightBlue, {}, 'none', {})
call <sid>hi('TSInclude', s:cdPink, {}, 'none', {})
" Variable
call <sid>hi('TSVariable', s:cdLightBlue, {}, 'none', {})
call <sid>hi('TSVariableBuiltin', s:cdLightBlue, {}, 'none', {})
" Text
call <sid>hi('TSText', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('TSStrong', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('TSEmphasis', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('TSUnderline', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('TSTitle', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('TSLiteral', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('TSURI', s:cdYellowOrange, {}, 'none', {})
" Tags
call <sid>hi('TSTag', s:cdBlue, {}, 'none', {})
call <sid>hi('TSTagDelimiter', s:cdGray, {}, 'none', {})

" Markdown:
call <sid>hi('markdownBold', s:cdBlue, {}, 'bold', {})
call <sid>hi('markdownCode', s:cdOrange, {}, 'none', {})
call <sid>hi('markdownRule', s:cdBlue, {}, 'bold', {})
call <sid>hi('markdownCodeDelimiter', s:cdOrange, {}, 'none', {})
call <sid>hi('markdownHeadingDelimiter', s:cdBlue, {}, 'none', {})
call <sid>hi('markdownFootnote', s:cdOrange, {}, 'none', {})
call <sid>hi('markdownFootnoteDefinition', s:cdOrange, {}, 'none', {})
call <sid>hi('markdownUrl', s:cdLightBlue, {}, 'underline', {})
call <sid>hi('markdownLinkText', s:cdOrange, {}, 'none', {})
call <sid>hi('markdownEscape', s:cdYellowOrange, {}, 'none', {})

" Asciidoc (for default syntax highlighting)
call <sid>hi("asciidocAttributeEntry", s:cdYellowOrange, {}, 'none', {})
call <sid>hi("asciidocAttributeList", s:cdPink, {}, 'none', {})
call <sid>hi("asciidocAttributeRef", s:cdYellowOrange, {}, 'none', {})
call <sid>hi("asciidocHLabel", s:cdBlue, {}, 'bold', {})
call <sid>hi("asciidocListingBlock", s:cdOrange, {}, 'none', {})
call <sid>hi("asciidocMacroAttributes", s:cdYellowOrange, {}, 'none', {})
call <sid>hi("asciidocOneLineTitle", s:cdBlue, {}, 'bold', {})
call <sid>hi("asciidocPassthroughBlock", s:cdBlue, {}, 'none', {})
call <sid>hi("asciidocQuotedMonospaced", s:cdOrange, {}, 'none', {})
call <sid>hi("asciidocTriplePlusPassthrough", s:cdYellow, {}, 'none', {})
call <sid>hi("asciidocMacro", s:cdPink, {}, 'none', {})
call <sid>hi("asciidocAdmonition", s:cdOrange, {}, 'none', {})
call <sid>hi("asciidocQuotedEmphasized", s:cdBlue, {}, 'italic', {})
call <sid>hi("asciidocQuotedEmphasized2", s:cdBlue, {}, 'italic', {})
call <sid>hi("asciidocQuotedEmphasizedItalic", s:cdBlue, {}, 'italic', {})
hi! link asciidocBackslash Keyword
hi! link asciidocQuotedBold markdownBold
hi! link asciidocQuotedMonospaced2 asciidocQuotedMonospaced
hi! link asciidocQuotedUnconstrainedBold asciidocQuotedBold
hi! link asciidocQuotedUnconstrainedEmphasized asciidocQuotedEmphasized
hi! link asciidocURL markdownUrl

" JSON:
call <sid>hi('jsonKeyword', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsonEscape', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('jsonNull', s:cdBlue, {}, 'none', {})
call <sid>hi('jsonBoolean', s:cdBlue, {}, 'none', {})

" HTML:
call <sid>hi('htmlTag', s:cdGray, {}, 'none', {})
call <sid>hi('htmlEndTag', s:cdGray, {}, 'none', {})
call <sid>hi('htmlTagName', s:cdBlue, {}, 'none', {})
call <sid>hi('htmlSpecialTagName', s:cdBlue, {}, 'none', {})
call <sid>hi('htmlArg', s:cdLightBlue, {}, 'none', {})

" PHP:
call <sid>hi('phpStaticClasses', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('phpMethod', s:cdYellow, {}, 'none', {})
call <sid>hi('phpClass', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('phpFunction', s:cdYellow, {}, 'none', {})
call <sid>hi('phpInclude', s:cdBlue, {}, 'none', {})
call <sid>hi('phpUseClass', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('phpRegion', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('phpMethodsVar', s:cdLightBlue, {}, 'none', {})

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
call <sid>hi('cssStyle', s:cdLightBlue, {}, 'none', {})
call <sid>hi('cssImportant', s:cdBlue, {}, 'none', {})

" JavaScript:
call <sid>hi('jsVariableDef', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsFuncArgs', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsFuncBlock', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsRegexpString', s:cdLightRed, {}, 'none', {})
call <sid>hi('jsThis', s:cdBlue, {}, 'none', {})
call <sid>hi('jsOperatorKeyword', s:cdBlue, {}, 'none', {})
call <sid>hi('jsDestructuringBlock', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsObjectKey', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsGlobalObjects', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('jsModuleKeyword', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsClassDefinition', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('jsClassKeyword', s:cdBlue, {}, 'none', {})
call <sid>hi('jsExtendsKeyword', s:cdBlue, {}, 'none', {})
call <sid>hi('jsExportDefault', s:cdPink, {}, 'none', {})
call <sid>hi('jsFuncCall', s:cdYellow, {}, 'none', {})
call <sid>hi('jsObjectValue', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsParen', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsObjectProp', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsIfElseBlock', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsParenIfElse', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsSpreadOperator', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsSpreadExpression', s:cdLightBlue, {}, 'none', {})

" Typescript:
call <sid>hi('typescriptLabel', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptExceptions', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptBraces', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptEndColons', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptParens', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptDocTags', s:cdBlue, {}, 'none', {})
call <sid>hi('typescriptDocComment', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptLogicSymbols', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptImport', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptBOM', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptVariableDeclaration', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptVariable', s:cdBlue, {}, 'none', {})
call <sid>hi('typescriptExport', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptAliasDeclaration', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptAliasKeyword', s:cdBlue, {}, 'none', {})
call <sid>hi('typescriptClassName', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptAccessibilityModifier', s:cdBlue, {}, 'none', {})
call <sid>hi('typescriptOperator', s:cdBlue, {}, 'none', {})
call <sid>hi('typescriptArrowFunc', s:cdBlue, {}, 'none', {})
call <sid>hi('typescriptMethodAccessor', s:cdBlue, {}, 'none', {})
call <sid>hi('typescriptMember', s:cdYellow, {}, 'none', {})
call <sid>hi('typescriptTypeReference', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptDefault', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptTemplateSB', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('typescriptArrowFuncArg', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptParamImpl', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptFuncComma', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptCastKeyword', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptCall', s:cdBlue, {}, 'none', {})
call <sid>hi('typescriptCase', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptReserved', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptDefault', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptDecorator', s:cdYellow, {}, 'none', {})
call <sid>hi('typescriptPredefinedType', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptClassHeritage', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptClassExtends', s:cdBlue, {}, 'none', {})
call <sid>hi('typescriptClassKeyword', s:cdBlue, {}, 'none', {})
call <sid>hi('typescriptBlock', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptDOMDocProp', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptTemplateSubstitution', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptClassBlock', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptFuncCallArg', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptIndexExpr', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptConditionalParen', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptArray', s:cdYellow, {}, 'none', {})
call <sid>hi('typescriptES6SetProp', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptObjectLiteral', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptTypeParameter', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptEnumKeyword', s:cdBlue, {}, 'none', {})
call <sid>hi('typescriptEnum', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptLoopParen', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptParenExp', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptModule', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptAmbientDeclaration', s:cdBlue, {}, 'none', {})
call <sid>hi('typescriptModule', s:cdBlue, {}, 'none', {})
call <sid>hi('typescriptFuncTypeArrow', s:cdBlue, {}, 'none', {})
call <sid>hi('typescriptInterfaceHeritage', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptInterfaceName', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptInterfaceKeyword', s:cdBlue, {}, 'none', {})
call <sid>hi('typescriptInterfaceExtends', s:cdBlue, {}, 'none', {})
call <sid>hi('typescriptGlobal', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptAsyncFuncKeyword', s:cdBlue, {}, 'none', {})
call <sid>hi('typescriptFuncKeyword', s:cdBlue, {}, 'none', {})
call <sid>hi('typescriptGlobalMethod', s:cdYellow, {}, 'none', {})
call <sid>hi('typescriptPromiseMethod', s:cdYellow, {}, 'none', {})

" XML:
call <sid>hi('xmlTag', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('xmlTagName', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('xmlEndTag', s:cdBlueGreen, {}, 'none', {})

" Ruby:
call <sid>hi('rubyClassNameTag', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('rubyClassName', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('rubyModuleName', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('rubyConstant', s:cdBlueGreen, {}, 'none', {})

" Golang:
call <sid>hi('goPackage', s:cdBlue, {}, 'none', {})
call <sid>hi('goImport', s:cdBlue, {}, 'none', {})
call <sid>hi('goVar', s:cdBlue, {}, 'none', {})
call <sid>hi('goConst', s:cdBlue, {}, 'none', {})
call <sid>hi('goStatement', s:cdPink, {}, 'none', {})
call <sid>hi('goType', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('goSignedInts', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('goUnsignedInts', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('goFloats', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('goComplexes', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('goBuiltins', s:cdYellow, {}, 'none', {})
call <sid>hi('goBoolean', s:cdBlue, {}, 'none', {})
call <sid>hi('goPredefinedIdentifiers', s:cdBlue, {}, 'none', {})
call <sid>hi('goTodo', s:cdGreen, {}, 'none', {})
call <sid>hi('goDeclaration', s:cdBlue, {}, 'none', {})
call <sid>hi('goDeclType', s:cdBlue, {}, 'none', {})
call <sid>hi('goTypeDecl', s:cdBlue, {}, 'none', {})
call <sid>hi('goTypeName', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('goVarAssign', s:cdLightBlue, {}, 'none', {})
call <sid>hi('goVarDefs', s:cdLightBlue, {}, 'none', {})
call <sid>hi('goReceiver', s:cdFront, {}, 'none', {})
call <sid>hi('goReceiverType', s:cdFront, {}, 'none', {})
call <sid>hi('goFunctionCall', s:cdYellow, {}, 'none', {})
call <sid>hi('goMethodCall', s:cdYellow, {}, 'none', {})
call <sid>hi('goSingleDecl', s:cdLightBlue, {}, 'none', {})

" Python:
call <sid>hi('pythonStatement', s:cdBlue, {}, 'none', {})
call <sid>hi('pythonOperator', s:cdBlue, {}, 'none', {})
call <sid>hi('pythonException', s:cdPink, {}, 'none', {})
call <sid>hi('pythonExClass', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('pythonBuiltinObj', s:cdLightBlue, {}, 'none', {})
call <sid>hi('pythonBuiltinType', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('pythonBoolean', s:cdBlue, {}, 'none', {})
call <sid>hi('pythonNone', s:cdBlue, {}, 'none', {})
call <sid>hi('pythonTodo', s:cdBlue, {}, 'none', {})
call <sid>hi('pythonClassVar', s:cdBlue, {}, 'none', {})
call <sid>hi('pythonClassDef', s:cdBlueGreen, {}, 'none', {})

" TeX:
call <sid>hi('texStatement', s:cdBlue, {}, 'none', {})
call <sid>hi('texBeginEnd', s:cdYellow, {}, 'none', {})
call <sid>hi('texBeginEndName', s:cdLightBlue, {}, 'none', {})
call <sid>hi('texOption', s:cdLightBlue, {}, 'none', {})
call <sid>hi('texBeginEndModifier', s:cdLightBlue, {}, 'none', {})
call <sid>hi('texDocType', s:cdPink, {}, 'none', {})
call <sid>hi('texDocTypeArgs', s:cdLightBlue, {}, 'none', {})

" Git:
call <sid>hi('gitcommitHeader', s:cdGray, {}, 'none', {})
call <sid>hi('gitcommitOnBranch', s:cdGray, {}, 'none', {})
call <sid>hi('gitcommitBranch', s:cdPink, {}, 'none', {})
call <sid>hi('gitcommitComment', s:cdGray, {}, 'none', {})
call <sid>hi('gitcommitSelectedType', s:cdGreen, {}, 'none', {})
call <sid>hi('gitcommitSelectedFile', s:cdGreen, {}, 'none', {})
call <sid>hi('gitcommitDiscardedType', s:cdRed, {}, 'none', {})
call <sid>hi('gitcommitDiscardedFile', s:cdRed, {}, 'none', {})
call <sid>hi('gitcommitOverflow', s:cdRed, {}, 'none', {})
call <sid>hi('gitcommitSummary', s:cdPink, {}, 'none', {})
call <sid>hi('gitcommitBlank', s:cdPink, {}, 'none', {})

" Lua:
call <sid>hi('luaFuncCall', s:cdYellow, {}, 'none', {})
call <sid>hi('luaFuncArgName', s:cdLightBlue, {}, 'none', {})
call <sid>hi('luaFuncKeyword', s:cdPink, {}, 'none', {})
call <sid>hi('luaLocal', s:cdPink, {}, 'none', {})
call <sid>hi('luaBuiltIn', s:cdBlue, {}, 'none', {})

" SH:
call <sid>hi('shDeref', s:cdLightBlue, {}, 'none', {})
call <sid>hi('shVariable', s:cdLightBlue, {}, 'none', {})

" SQL:
call <sid>hi('sqlKeyword', s:cdPink, {}, 'none', {})
call <sid>hi('sqlFunction', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('sqlOperator', s:cdPink, {}, 'none', {})

" YAML:
call <sid>hi('yamlKey', s:cdBlue, {}, 'none', {})
call <sid>hi('yamlConstant', s:cdBlue, {}, 'none', {})

" Coc Explorer:
call <sid>hi('CocExplorerIndentLine', s:cdCursorDark, {}, 'none', {})
