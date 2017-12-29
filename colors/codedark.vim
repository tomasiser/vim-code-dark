
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
let s:cterm00 = '00'
let s:cterm03 = '08'
let s:cterm05 = '07'
let s:cterm07 = '15'
let s:cterm08 = '01'
let s:cterm0A = '03'
let s:cterm0B = '02'
let s:cterm0C = '06'
let s:cterm0D = '04'
let s:cterm0E = '05'
if exists('base16colorspace') && base16colorspace == '256'
  let s:cterm01 = '18'
  let s:cterm02 = '19'
  let s:cterm04 = '20'
  let s:cterm06 = '21'
  let s:cterm09 = '16'
  let s:cterm0F = '17'
else
  let s:cterm01 = '00'
  let s:cterm02 = '08'
  let s:cterm04 = '07'
  let s:cterm06 = '07'
  let s:cterm09 = '06'
  let s:cterm0F = '03'
endif


" ===============================================================================
" General appearance colors:
" (some of them may be unused)
" ===============================================================================

let s:cdNone =               { 'gui': 'NONE',    'cterm': 'NONE',    'cterm256': 'NONE'}
let s:cdFront =              { 'gui': '#D4D4D4', 'cterm': s:cterm05, 'cterm256': '188' }
let s:cdBack =               { 'gui': '#1E1E1E', 'cterm': s:cterm00, 'cterm256': '234' }
let s:cdNop =                { 'gui': '',        'cterm': '',        'cterm256': ''    }

let s:cdTabCurrent =         { 'gui': '#1E1E1E', 'cterm': s:cterm00, 'cterm256': '234'}
let s:cdTabOther =           { 'gui': '#2D2D2D', 'cterm': s:cterm01, 'cterm256': '236'}
let s:cdTabOutside =         { 'gui': '#252526', 'cterm': s:cterm01, 'cterm256': '235'}

let s:cdLeftDark =           { 'gui': '#252526', 'cterm': s:cterm01, 'cterm256': '235'}
let s:cdLeftMid =            { 'gui': '#373737', 'cterm': s:cterm03, 'cterm256': '237'}
let s:cdLeftLight =          { 'gui': '#3F3F46', 'cterm': s:cterm03, 'cterm256': '238'}

let s:cdPopupFront =         { 'gui': '#BBBBBB', 'cterm': s:cterm06, 'cterm256': '250'}
let s:cdPopupBack =          { 'gui': '#2D2D30', 'cterm': s:cterm01, 'cterm256': '236'}
let s:cdPopupHighlightBlue = { 'gui': '#073655', 'cterm': s:cterm0D, 'cterm256': '24' }
let s:cdPopupHighlightGray = { 'gui': '#3D3D40', 'cterm': s:cterm03, 'cterm256': '237'}

let s:cdSplitLight =         { 'gui': '#898989', 'cterm': s:cterm04, 'cterm256': '245'}
let s:cdSplitDark =          { 'gui': '#444444', 'cterm': s:cterm03, 'cterm256': '238'}
let s:cdSplitThumb =         { 'gui': '#424242', 'cterm': s:cterm04, 'cterm256': '238'}

let s:cdCursorDarkDark =     { 'gui': '#222222', 'cterm': s:cterm01, 'cterm256': '235'}
let s:cdCursorDark =         { 'gui': '#51504F', 'cterm': s:cterm03, 'cterm256': '239'}
let s:cdCursorLight =        { 'gui': '#AEAFAD', 'cterm': s:cterm04, 'cterm256': '145'}
let s:cdSelection =          { 'gui': '#264F78', 'cterm': s:cterm03, 'cterm256': '24' }
let s:cdLineNumber =         { 'gui': '#5A5A5A', 'cterm': s:cterm04, 'cterm256': '240'}

let s:cdDiffRedDark =        { 'gui': '#4B1818', 'cterm': s:cterm08, 'cterm256': '52' }
let s:cdDiffRedLight =       { 'gui': '#6F1313', 'cterm': s:cterm08, 'cterm256': '52' }
let s:cdDiffRedLightLight =  { 'gui': '#FB0101', 'cterm': s:cterm08, 'cterm256': '09' }
let s:cdDiffGreenDark =      { 'gui': '#373D29', 'cterm': s:cterm0B, 'cterm256': '237'}
let s:cdDiffGreenLight =     { 'gui': '#4B5632', 'cterm': s:cterm09, 'cterm256': '58' }

let s:cdSearchCurrent =      { 'gui': '#49545F', 'cterm': s:cterm09, 'cterm256': '239'}
let s:cdSearch =             { 'gui': '#4C4E50', 'cterm': s:cterm0A, 'cterm256': '239'}

" Syntax colors:
let s:cdDarkGray =     { 'gui': '#505050', 'cterm': s:cterm04, 'cterm256': '08' }
let s:cdBrightBlack =  { 'gui': '#303030', 'cterm': s:cterm04, 'cterm256': '234'}
let s:cdBrightBlue =   { 'gui': '#007ACC', 'cterm': s:cterm0D, 'cterm256': '73' }

let s:cdGray =         { 'gui': '#808080', 'cterm': s:cterm04, 'cterm256': '08' }
let s:cdViolet =       { 'gui': '#646695', 'cterm': s:cterm04, 'cterm256': '60' }
let s:cdBlue =         { 'gui': '#569CD6', 'cterm': s:cterm0D, 'cterm256': '75' }
let s:cdDarkBlue =     { 'gui': '#223E55', 'cterm': s:cterm0D, 'cterm256': '73' }
let s:cdLightBlue =    { 'gui': '#9CDCFE', 'cterm': s:cterm0C, 'cterm256': '117'}
let s:cdGreen =        { 'gui': '#608B4E', 'cterm': s:cterm0B, 'cterm256': '65' }
let s:cdBlueGreen =    { 'gui': '#4EC9B0', 'cterm': s:cterm0F, 'cterm256': '43' }
let s:cdLightGreen =   { 'gui': '#B5CEA8', 'cterm': s:cterm09, 'cterm256': '151'}
let s:cdRed =          { 'gui': '#F44747', 'cterm': s:cterm08, 'cterm256': '203'}
let s:cdOrange =       { 'gui': '#CE9178', 'cterm': s:cterm0F, 'cterm256': '173'}
let s:cdLightRed =     { 'gui': '#D16969', 'cterm': s:cterm08, 'cterm256': '167'}
let s:cdYellowOrange = { 'gui': '#D7BA7D', 'cterm': s:cterm0A, 'cterm256': '179'}
let s:cdYellow =       { 'gui': '#DCDCAA', 'cterm': s:cterm0A, 'cterm256': '187'}
let s:cdPink =         { 'gui': '#C586C0', 'cterm': s:cterm0E, 'cterm256': '176'}


" Vim editor colors
"    <sid>hi( GROUP,         FOREGROUND,     BACKGROUND,             ATTRIBUTE,   SPECIAL)
call <sid>hi('Normal',       {},             s:cdBack,               'none',      {})
call <sid>hi('NormalNC',     {},             s:cdBrightBlack,        'none',      {})
call <sid>hi('ColorColumn',  {},             s:cdBrightBlack,        'none',      {})
call <sid>hi('TermCursor',   s:cdGreen,      s:cdBrightBlack,        'none',      {})
" call <sid>hi('CursorIM',     s:cdBlue,       s:cdBlue,               'none',      {})
call <sid>hi('iCursor',      {},             s:cdPink,               'none',      {})
call <sid>hi('rCursor',      {},             s:cdLightRed,           'none',      {})
call <sid>hi('lCursor',      {},             s:cdBlue,               'none',      {})
call <sid>hi('Cursor',       {},             s:cdGreen,              'none',      {})
call <sid>hi('CursorLine',   {},             s:cdBrightBlack,        'none',      {})
call <sid>hi('Directory',    s:cdBlue,       s:cdNop,                'none',      {})
call <sid>hi('DiffAdd',      {},             s:cdDiffGreenDark,      'none',      {})
call <sid>hi('DiffChange',   {},             s:cdDiffRedDark,        'none',      {})
call <sid>hi('DiffDelete',   {},             s:cdDiffRedLight,       'none',      {})
call <sid>hi('DiffText',     {},             s:cdDiffRedLight,       'none',      {})
call <sid>hi('EndOfBuffer',  s:cdBack,       s:cdBrightBlack,        'none',      {})
call <sid>hi('ErrorMsg',     s:cdLightRed,   s:cdNop,                'none',      {})
call <sid>hi('VertSplit',    s:cdBack,       s:cdBrightBlack,        'none',      {})
call <sid>hi('Folded',       s:cdGray,       s:cdBrightBlack,        'none',      {})
call <sid>hi('FoldColumn',   s:cdBack,       s:cdBrightBlack,        'none',      {})
call <sid>hi('SignColumn',   {},             s:cdBrightBlack,        'none',      {})
call <sid>hi('IncSearch',    s:cdNone,       s:cdSelection,          'none',      {})
" call <sid>hi('CursorLineNr', s:cdPopupFront, s:cdNop,               'none',      {})
call <sid>hi('LineNr',       s:cdLineNumber, s:cdBrightBlack,        'none',      {})
call <sid>hi('CursorLineNr', s:cdGreen,      s:cdBrightBlack,        'none',      {})
call <sid>hi('MatchParen',   s:cdFront,      s:cdSelection,          'none',      {})
" call <sid>hi('ModeMsg',      s:cdGray,       {},                     'none',      {})
call <sid>hi('MoreMsg',      s:cdBlue,       {},              'none',      {})
call <sid>hi('NonText',      s:cdLineNumber, s:cdNop,                'none',      {})
call <sid>hi('Pmenu',        s:cdPopupFront, s:cdPopupBack,          'none',      {})
call <sid>hi('PmenuSel',     s:cdPopupFront, s:cdPopupHighlightBlue, 'none',      {})
call <sid>hi('PmenuSbar',    {},             s:cdPopupHighlightGray, 'none',      {})
call <sid>hi('PmenuThumb',   {},             s:cdPopupFront,         'none',      {})
call <sid>hi('Question',     s:cdBlueGreen,  s:cdNop,                'none',      {})
call <sid>hi('Search',       s:cdNone,       s:cdSelection,          'none',      {})
call <sid>hi('SpellBad',     s:cdLightRed,   s:cdNone,               'none',      {})
call <sid>hi('SpellCap',     s:cdLightRed,   s:cdNone,               'none',      {})
call <sid>hi('SpellLocal',   s:cdLightRed,   s:cdNone,               'none',      {})
" FIXME: duplicate values for active/inactive statusline groups replaces spaces with carats '^^^' in statusline
call <sid>hi('StatusLine',     s:cdFront,      s:cdNop,                'none',      {})
call <sid>hi('StatusLineNC',   s:cdNop,        s:cdNop,                'none',      {})
call <sid>hi('TabLine',        s:cdFront,      s:cdTabOther,           'italic',    {})
call <sid>hi('TabLineFill',    s:cdFront,      s:cdTabOutside,         'italic',    {})
call <sid>hi('TabLineSel',     s:cdFront,      s:cdTabCurrent,         'none',      {})
call <sid>hi('Title',          s:cdBlue,       {},                     'bold',      {})
call <sid>hi('Visual',         s:cdNone,       s:cdSelection,          'none',      {})
call <sid>hi('VisualNOS',      s:cdNone,       s:cdSelection,          'none',      {})
call <sid>hi('WarningMsg',     s:cdOrange,     {},                     'none',      {})
call <sid>hi('WildMenu',       s:cdFront,      s:cdSelection,          'none',      {})

call <sid>hi('Comment',        s:cdDarkGray,   {}, 'italic', {})
call <sid>hi('SpecialComment', s:cdGreen,      {}, 'italic', {})
call <sid>hi('SpecialKey',     s:cdGreen,      {}, 'none', {})

call <sid>hi('Constant',       s:cdBlue,       {}, 'none', {})
call <sid>hi('Boolean',        s:cdBlue,       {}, 'none', {})
call <sid>hi('String',         s:cdOrange,     {}, 'none', {})
call <sid>hi('Character',      s:cdOrange,     {}, 'none', {})
call <sid>hi('Number',         s:cdLightGreen, {}, 'none', {})
call <sid>hi('Float',          s:cdLightGreen, {}, 'none', {})

call <sid>hi('Identifier',     s:cdLightBlue, {}, 'none', {})
call <sid>hi('Function',       s:cdYellow,    {}, 'none', {})

call <sid>hi('Statement',      s:cdPink,  {}, 'none', {})
call <sid>hi('Conditional',    s:cdPink,  {}, 'none', {})
call <sid>hi('Repeat',         s:cdPink,  {}, 'none', {})
call <sid>hi('Label',          s:cdPink,  {}, 'none', {})
call <sid>hi('Keyword',        s:cdPink,  {}, 'none', {})
call <sid>hi('Exception',      s:cdPink,  {}, 'none', {})

call <sid>hi('PreProc',        s:cdBlue,  {}, 'none', {})
call <sid>hi('Include',        s:cdPink,  {}, 'none', {})
call <sid>hi('Define',         s:cdPink,  {}, 'none', {})
call <sid>hi('Macro',          s:cdPink,  {}, 'none', {})
call <sid>hi('PreCondit',      s:cdPink,  {}, 'none', {})

call <sid>hi('Type',           s:cdBlueGreen,  {}, 'none', {})
call <sid>hi('Typedef',        s:cdBlueGreen,  {}, 'none', {})
call <sid>hi('StorageClass',   s:cdBlue,       {}, 'none', {})
call <sid>hi('Structure',      s:cdBlue,       {}, 'none', {})

call <sid>hi('Operator',       s:cdFront, {}, 'none', {})
call <sid>hi('Special',        s:cdFront, {}, 'none', {})
call <sid>hi('SpecialChar',    s:cdFront, {}, 'none', {})
call <sid>hi('Delimiter',      s:cdFront, {}, 'none', {})
call <sid>hi('Debug',          s:cdBrightBlue, s:cdLightRed, 'none', {})
call <sid>hi('Tag',            s:cdGreen, {}, 'none', {})

call <sid>hi('Underlined',     s:cdNone,     {},          'underline',   {})
call <sid>hi('Conceal',        s:cdFront,    s:cdBack,    'none',        {})
call <sid>hi('Ignore',         {},           {},          'none',        {})
call <sid>hi('Error',          s:cdLightRed, s:cdNop,     'none',        {})
call <sid>hi('Todo',           s:cdFront,    s:cdGreen,     'bold,italic', {})

call <sid>hi('helpHeadline',       s:cdPink,       {}, 'none', {})
call <sid>hi('helpHeader',         s:cdPink,       {}, 'none', {})
call <sid>hi('helpHyperTextEntry', s:cdBlue,       {}, 'none', {})
call <sid>hi('helpHyperTextJump',  s:cdLightBlue,  {}, 'none', {})
call <sid>hi('helpSectionDelim',   s:cdBrightBlue, {}, 'none', {})
call <sid>hi('helpExample',        s:cdOrange,     {}, 'none', {})
call <sid>hi('helpSpecial',        s:cdBlueGreen,  {}, 'none', {})
call <sid>hi('helpURL',            s:cdLightBlue,  {}, 'none', {})
call <sid>hi('helpBar',            {},             {}, 'none', {})
call <sid>hi('helpNote',           {},             {}, 'none', {})
call <sid>hi('helpOption',         {},             {}, 'none', {})
call <sid>hi('helpCommand',        s:cdYellow,     {}, 'none', {})

call <sid>hi('qfFileName',         s:cdBlue,       {}, 'none', {})
call <sid>hi('qfLineNr',           s:cdLightGreen, {}, 'none', {})
" ===============================================================================
"  Languages & Filetypes
" ===============================================================================

" CSS:
call <sid>hi('cssBraces',          s:cdFront,        {}, 'none', {})
call <sid>hi('cssInclude',         s:cdPink,         {}, 'none', {})
call <sid>hi('cssTagName',         s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssClassName',       s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssPseudoClass',     s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssPseudoClassId',   s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssPseudoClassLang', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssIdentifier',      s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssProp',            s:cdLightBlue,    {}, 'none', {})
call <sid>hi('cssDefinition',      s:cdLightBlue,    {}, 'none', {})
call <sid>hi('cssAttr',            s:cdOrange,       {}, 'none', {})
call <sid>hi('cssAttrRegion',      s:cdOrange,       {}, 'none', {})
call <sid>hi('cssColor',           s:cdOrange,       {}, 'none', {})
call <sid>hi('cssFunction',        s:cdOrange,       {}, 'none', {})
call <sid>hi('cssFunctionName',    s:cdOrange,       {}, 'none', {})
call <sid>hi('cssVendor',          s:cdOrange,       {}, 'none', {})
call <sid>hi('cssValueNumber',     s:cdOrange,       {}, 'none', {})
call <sid>hi('cssValueLength',     s:cdOrange,       {}, 'none', {})
call <sid>hi('cssUnitDecorators',  s:cdOrange,       {}, 'none', {})

" Golang:
call <sid>hi('goStatement',             s:cdPink,      {}, 'none', {})
call <sid>hi('goPackage',               s:cdBlue,      {}, 'none', {})
call <sid>hi('goImport',                s:cdBlue,      {}, 'none', {})
call <sid>hi('goVar',                   s:cdBlue,      {}, 'none', {})
call <sid>hi('goConst',                 s:cdBlue,      {}, 'none', {})
call <sid>hi('goType',                  s:cdBlue,      {}, 'none', {})
call <sid>hi('goSignedInts',            s:cdBlue,      {}, 'none', {})
call <sid>hi('goUnsignedInts',          s:cdBlue,      {}, 'none', {})
call <sid>hi('goFloats',                s:cdBlue,      {}, 'none', {})
call <sid>hi('goComplexes',             s:cdBlue,      {}, 'none', {})
call <sid>hi('goBoolean',               s:cdBlue,      {}, 'none', {})
call <sid>hi('goPredefinedIdentifiers', s:cdBlue,      {}, 'none', {})
call <sid>hi('goDeclaration',           s:cdBlue,      {}, 'none', {})
call <sid>hi('goDeclType',              s:cdBlue,      {}, 'none', {})
call <sid>hi('goTypeDecl',              s:cdBlue,      {}, 'none', {})
call <sid>hi('goTodo',                  s:cdFront,     s:cdGreen, 'none', {})
call <sid>hi('goTypeName',              s:cdBlueGreen, {}, 'none', {})
call <sid>hi('goVarAssign',             s:cdLightBlue, {}, 'none', {})
call <sid>hi('goVarDefs',               s:cdLightBlue, {}, 'none', {})
call <sid>hi('goSingleDecl',            s:cdLightBlue, {}, 'none', {})
call <sid>hi('goReceiver',              s:cdFront,     {}, 'none', {})
call <sid>hi('goReceiverType',          s:cdDarkBlue,  {}, 'none', {})
call <sid>hi('goFunctionCall',          s:cdYellow,    {}, 'none', {})
call <sid>hi('goMethodCall',            s:cdYellow,    {}, 'none', {})
call <sid>hi('goBuiltins',              s:cdYellow,    {}, 'none', {})

" HTML:
call <sid>hi('htmlTag',            s:cdGray,      {}, 'none',   {})
call <sid>hi('htmlEndTag',         s:cdGray,      {}, 'none',   {})
call <sid>hi('htmlTagName',        s:cdBlue,      {}, 'none',   {})
call <sid>hi('htmlSpecialTagName', s:cdBlue,      {}, 'none',   {})
call <sid>hi('htmlArg',            s:cdLightBlue, {}, 'none',   {})
call <sid>hi('htmlBold',           s:cdPink,      {}, 'bold',   {})
call <sid>hi('htmlItalic',         s:cdBlueGreen, {}, 'italic', {})

" JavaScript:
call <sid>hi('jsFuncCall',           s:cdYellow,       {}, 'none', {})
call <sid>hi('jsVariableDef',        s:cdLightBlue,    {}, 'none', {})
call <sid>hi('jsParen',              s:cdLightBlue,    {}, 'none', {})
call <sid>hi('jsParenRepeat',        s:cdLightBlue,    {}, 'none', {})
call <sid>hi('jsParenSwitch',        s:cdLightBlue,    {}, 'none', {})
call <sid>hi('jsParenIfElse',        s:cdLightBlue,    {}, 'none', {})
call <sid>hi('jsSwitchColon',        s:cdPink,         {}, 'none', {})
call <sid>hi('jsSpecial',            s:cdYellowOrange, {}, 'none', {})
call <sid>hi('jsFuncArgs',           s:cdLightBlue,    {}, 'none', {})
call <sid>hi('jsRegexpString',       s:cdLightRed,     {}, 'none', {})
call <sid>hi('jsThis',               s:cdBlue,         {}, 'none', {})
call <sid>hi('jsTemplateBraces',     s:cdBlue,         {}, 'none', {})
call <sid>hi('jsNoise',              s:cdDarkGray,     {}, 'none', {})
call <sid>hi('jsGlobalObjects',      s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('jsGlobalNodeObjects',  s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('jsObjectProp',         s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('jsObjectStringKey',    s:cdLightBlue,    {}, 'none', {})
call <sid>hi('jsTemplateString',     s:cdOrange,       {}, 'none', {})
call <sid>hi('jsTemplateExpression', s:cdLightBlue,    {}, 'none', {})

" JSON:
" (elzr/vim-json)
call <sid>hi('jsonKeyword',      s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsonKeywordMatch', s:cdDarkGray,  {}, 'none', {})
call <sid>hi('jsonBraces',       s:cdDarkGray,  {}, 'none', {})
call <sid>hi('jsonNoise',        s:cdDarkGray,  {}, 'none', {})
call <sid>hi('jsonQuote',        s:cdDarkGray,  {}, 'none', {})
call <sid>hi('jsonString',       s:cdOrange,    {}, 'none', {})
" (Quramy/vison)
call <sid>hi('jsonCommentError', s:cdGray,  {}, 'none', {})
call <sid>hi('jsonEscape',       s:cdYellowOrange,  {}, 'none', {})
" call <sid>hi('jsonFold',         s:cdDarkGray,  {}, 'none', {})

" Lua:
" (tbastos/vim-lua)
call <sid>hi('luaFunc',           {},            {}, 'none', {})
call <sid>hi('luaComma',          {},            {}, 'none', {})
call <sid>hi('luaFuncParens',     {},            {}, 'none', {})
call <sid>hi('luaSymbolOperator', {},            {}, 'none', {})
call <sid>hi('luaBraces',         s:cdFront,     {}, 'none', {})
call <sid>hi('luaFuncName',       s:cdYellow,    {}, 'none', {})
call <sid>hi('luaString',         s:cdOrange,    {}, 'none', {})
call <sid>hi('luaFuncKeyword',    s:cdPink,      {}, 'none', {})
call <sid>hi('luaTable',          {},            {}, 'none', {})
call <sid>hi('luaFuncSig',        {},            {}, 'none', {})
call <sid>hi('luaFuncArg',        s:cdLightBlue, {}, 'none', {})
call <sid>hi('luaFuncArgName',    s:cdLightBlue, {}, 'none', {})

" Markdown:
" (tpope/vim-markdown)
call <sid>hi('markdownH1',                s:cdBlue,       {}, 'none',   {})
call <sid>hi('markdownH2',                s:cdBlue,       {}, 'none',   {})
call <sid>hi('markdownH3',                s:cdBlue,       {}, 'none',   {})
call <sid>hi('markdownH4',                s:cdBlue,       {}, 'none',   {})
call <sid>hi('markdownH5',                s:cdBlue,       {}, 'none',   {})
call <sid>hi('markdownH6',                s:cdBlue,       {}, 'none',   {})
call <sid>hi('markdownHeadingDelimiter',  s:cdBlue,       {}, 'none',   {})
call <sid>hi('markdownItalic',            s:cdLightBlue,  {}, 'italic', {})
call <sid>hi('markdownItalicDelimiter',   s:cdLightBlue,  {}, 'italic', {})
call <sid>hi('markdownBold',              s:cdBlue,       {}, 'bold',   {})
call <sid>hi('markdownBoldDelimiter',     s:cdBlue,       {}, 'none',   {})
call <sid>hi('markdownListMarker',        s:cdBrightBlue, {}, 'none',   {})
call <sid>hi('markdownCode',              s:cdOrange,     {}, 'none',   {})
call <sid>hi('markdownCodeDelimiter',     s:cdOrange,     {}, 'none',   {})
call <sid>hi('markdownUrl',               s:cdOrange,     {}, 'none',   {})
call <sid>hi('markdownLinkText',          s:cdLightBlue,  {}, 'none',   {})
call <sid>hi('markdownLinkTextDelimiter', s:cdGray,       {}, 'none',   {})
call <sid>hi('markdownLinkDelimiter',     s:cdGray,       {}, 'none',   {})
call <sid>hi('markdownBlockquote',        s:cdGreen,      {}, 'none',   {})

" Markdown:
" (plasticboy/vim-markdown)
call <sid>hi('mkdItalic',           {},                 {}, 'italic',      {})
call <sid>hi('mkdBold',             {},                 {}, 'bold',        {})
call <sid>hi('mkdBoldItalic',       {},                 {}, 'bold,italic', {})
call <sid>hi('mkdFootnotes',        {},                 {}, 'none',        {})
call <sid>hi('mkdFootnote',         {},                 {}, 'none',        {})
call <sid>hi('mkdID',               {},                 {}, 'none',        {})
call <sid>hi('mkdURL',              s:cdOrange,         {}, 'none',        {})
call <sid>hi('mkdLink',             s:cdLightBlue,      {}, 'italic',      {})
call <sid>hi('mkdInlineURL',        s:cdOrange,         {}, 'none',        {})
call <sid>hi('mkdLinkDefTarget',    s:cdLightBlue,      {}, 'none',        {})
call <sid>hi('mkdLinkDef',          s:cdLightBlue,      {}, 'none',        {})
call <sid>hi('mkdLinkTitle',        s:cdLightBlue,      {}, 'none',        {})
call <sid>hi('mkdLineBreak',        {},                 {}, 'none',        {})
call <sid>hi('mkdBlockquote',       s:cdGreen,          {}, 'none',        {})
call <sid>hi('mkdCode',             s:cdOrange,         {}, 'none',        {})
call <sid>hi('mkdListItem',         s:cdBrightBlue,     {}, 'none',        {})
call <sid>hi('mkdListItemLine',     {},                 {}, 'none',        {})
call <sid>hi('mkdNonListItemBlock', {},                 {}, 'none',        {})
call <sid>hi('mkdRule',             s:cdPink,           {}, 'none',        {})
call <sid>hi('mkdDelimiter',        s:cdDarkGray,       {}, 'none',        {})

" Python:
call <sid>hi('pythonRun',             s:cdBlue,         {}, 'none',   {})
call <sid>hi('pythonCoding',          s:cdBlue,         {}, 'none',   {})
call <sid>hi('pythonClassName',       s:cdBlueGreen,    {}, 'none',   {})
call <sid>hi('pythonClassVar',        s:cdBlue,         {}, 'italic', {})
call <sid>hi('pythonCommentTitle',    s:cdGreen,        {}, 'none',   {})
call <sid>hi('pythonDot',             s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('pythonAttribute',       s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('pythonFunction',        s:cdYellow,       {}, 'none',   {})
call <sid>hi('pythonBuiltinFunc',     s:cdBlue,         {}, 'none',   {})
call <sid>hi('pythonBuiltinObj',      s:cdBlueGreen,    {}, 'none',   {})
call <sid>hi('pythonInclude',         s:cdPink,         {}, 'none',   {})
call <sid>hi('pythonOperator',        s:cdPink,         {}, 'none',   {})
call <sid>hi('pythonStatement',       s:cdPink,         {}, 'none',   {})
call <sid>hi('pythonNumber',          s:cdLightGreen,   {}, 'none',   {})
call <sid>hi('pythonString',          s:cdOrange,       {}, 'none',   {})
call <sid>hi('pythonRawString',       s:cdOrange,       {}, 'none',   {})
call <sid>hi('pythonFString',         s:cdOrange,       {}, 'none',   {})
call <sid>hi('pythonStrFormat',       s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('pythonStrInterpRegion', s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('pythonStrFormatting',   s:cdYellowOrange, {}, 'none',   {})
call <sid>hi('pythonEscape',          s:cdYellowOrange, {}, 'none',   {})
call <sid>hi('pythonRawEscape',       s:cdYellowOrange, {}, 'none',   {})
call <sid>hi('pythonBytesEscape',     s:cdYellowOrange, {}, 'none',   {})
call <sid>hi('pythonTrippleQuotes',   s:cdGreen,        {}, 'none',   {})
call <sid>hi('pythonDocString',       s:cdGreen,        {}, 'none',   {})
call <sid>hi('pythonComment',         s:cdDarkGray,     {}, 'italic', {})
" (tweekmonster/impsort.vim)
call <sid>hi('pythonImport',          s:cdPink,        {}, 'none', {})
call <sid>hi('pythonIncludeLine',     s:cdBlueGreen,   {}, 'none', {})
call <sid>hi('pythonImportedModule',  s:cdLightBlue,   {}, 'none', {})
call <sid>hi('pythonImportedObject',  s:cdBlueGreen,   {}, 'none', {})
call <sid>hi('pythonImportedFuncDef', s:cdYellow,      {}, 'none', {})
call <sid>hi('impsortNonImport',      s:cdLightBlue,   {}, 'none', {})

" Ruby:
call <sid>hi('rubyClassNameTag', s:cdBlueGreen, {}, 'none', {})

" Sh:
call <sid>hi('shFunction',          s:cdYellow,       {}, 'none',   {})
call <sid>hi('shFunctionKey',       s:cdPink,         {}, 'none',   {})
call <sid>hi('shFunctionOne',       s:cdFront,        {}, 'none',   {})
call <sid>hi('shFunctionTwo',       s:cdFront,        {}, 'none',   {})
call <sid>hi('shFunctionStatement', s:cdPink,         {}, 'none',   {})
call <sid>hi('shEscape',            s:cdYellowOrange, {}, 'none',   {})
call <sid>hi('shSpecial',           s:cdYellowOrange, {}, 'none',   {})
call <sid>hi('shConditional',       s:cdPink,         {}, 'none',   {})
call <sid>hi('shCommandSub',        {},               {}, 'none',   {})
call <sid>hi('shCmdParenRegion',    {},               {}, 'none',   {})
call <sid>hi('shCmdSubRegion',      {},               {}, 'none',   {})
call <sid>hi('shQuote',             s:cdOrange,       {}, 'none',   {})
call <sid>hi('shDoubleQuote',       s:cdOrange,       {}, 'none',   {})
call <sid>hi('shOption',            s:cdPink,         {}, 'none',   {})
call <sid>hi('shStatement',         s:cdBlue,         {}, 'none',   {})
call <sid>hi('shDeref',             s:cdFront,        {}, 'none',   {})
call <sid>hi('shDerefVar',          s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('shDerefSpecial',      s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('shDerefPattern',      s:cdLightRed,     {}, 'none',   {})
call <sid>hi('shDerefOp',           s:cdLightRed,     {}, 'none',   {})
call <sid>hi('shDerefSimple',       s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('shDerefVarArray',     s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('shRepeat',            s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('shFor',               s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('shCtrlSeq',           s:cdBlueGreen,    {}, 'none',   {})
call <sid>hi('shOperator',          s:cdFront,        {}, 'none',   {})
call <sid>hi('shTestOpr',           s:cdFront,        {}, 'none',   {})
call <sid>hi('shExpr',              s:cdFront,        {}, 'none',   {})
call <sid>hi('shIf',                s:cdPink,         {}, 'none',   {})
call <sid>hi('shDo',                s:cdPink,         {}, 'none',   {})
call <sid>hi('shLoop',              s:cdPink,         {}, 'none',   {})
call <sid>hi('shDblBrace',          s:cdPink,         {}, 'italic', {})
call <sid>hi('shSubSh',             {},               {}, 'none',   {})
call <sid>hi('shSubRegion',         {},               {}, 'none',   {})

" ZSH:
call <sid>hi('zshFunction',    s:cdYellow,    {}, 'none', {})
call <sid>hi('zshParentheses', s:cdFront,     {}, 'none', {})
call <sid>hi('zshVariableDef', s:cdLightBlue, {}, 'none', {})
call <sid>hi('zshParentheses', s:cdFront,     {}, 'none', {})

" Todo:
" (todo.txt)
call <sid>hi('todoItem',        s:cdFront,        {}, 'none',   {})
call <sid>hi('todoID',          s:cdDarkGray,     {}, 'none',   {})
call <sid>hi('todoDone',        s:cdGray,         {}, 'none',   {})
call <sid>hi('todoDate',        s:cdGray,         {}, 'none',   {})
call <sid>hi('todoOverDueDate', s:cdLightRed,     {}, 'none',   {})
call <sid>hi('todoProject',     s:cdBlueGreen,    {}, 'none',   {})
call <sid>hi('todoContext',     s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('todoExtra',       s:cdLightGreen,   {}, 'none',   {})
call <sid>hi('todoString',      s:cdOrange,       {}, 'none',   {})
call <sid>hi('todoPriorityA',   s:cdRed,          {}, 'none',   {})
call <sid>hi('todoPriorityB',   s:cdLightRed,     {}, 'none',   {})
call <sid>hi('todoPriorityC',   s:cdOrange,       {}, 'none',   {})
call <sid>hi('todoPriorityD',   s:cdYellowOrange, {}, 'none',   {})
call <sid>hi('todoPriorityE',   s:cdYellow,       {}, 'none',   {})
call <sid>hi('todoPriorityF',   s:cdLightGreen,   {}, 'none',   {})
call <sid>hi('todoComment',     s:cdDarkGray,     {}, 'italic', {})

" TSV:
" (chrisbra/csv.vim)
" call <sid>hi('CSVComment',          s:cdGray,         {}, 'italic', {})
call <sid>hi('CSVColumnEven',       s:cdBlue,         {},       'none', {})
call <sid>hi('CSVColumnOdd',        s:cdGreen,        {},       'none', {})
call <sid>hi('CSVColumnHeaderEven', s:cdBack,         s:cdBlue, 'none', {})
call <sid>hi('CSVColumnHeaderOdd',  s:cdBack,         s:cdGreen,'none', {})

" VimL:
call <sid>hi('vimEcho',           s:cdYellow,      {}, 'none',   {})
call <sid>hi('vimNamespace',      s:cdBlueGreen,   {}, 'none',   {})
call <sid>hi('vimCVar',           s:cdBlueGreen,   {}, 'none',   {})
call <sid>hi('vimVarNamespace',   s:cdBlueGreen,   {}, 'none',   {})
call <sid>hi('vimBuiltin',        s:cdBlue,        {}, 'none',   {}) " FIXME: find a better additional context color for ≈ global scope
call <sid>hi('vimUserFunc',       s:cdYellow,      {}, 'none',   {})
call <sid>hi('vimUsrCmd',         s:cdYellow,      {}, 'none',   {})
call <sid>hi('vimDocBlock',       s:cdGreen,       {}, 'none',   {})
" call <sid>hi('vimUserCmd',        s:cdYellow,       {}, 'none',   {})
" call <sid>hi('vimUserAttrb',      s:cdYellow,       {}, 'none',   {})
" call <sid>hi('vimUserAttrbKey',   s:cdYellow,       {}, 'none',   {})
call <sid>hi('vimFunction',       s:cdYellow,       {}, 'none',   {})
call <sid>hi('vimFunctionError',  s:cdRed,          {}, 'none',   {})
call <sid>hi('vimContinue',       s:cdDarkGray,     {}, 'none',   {})
call <sid>hi('vimLineComment',    s:cdDarkGray,     {}, 'italic', {})
call <sid>hi('vimCommentTitle',   s:cdGreen,        {}, 'italic', {})
call <sid>hi('vimBracket',        s:cdGray,         {}, 'none',   {})
call <sid>hi('vimNotFunc',        s:cdPink,         {}, 'none',   {})
call <sid>hi('vimCommand',        s:cdPink,         {}, 'none',   {})
call <sid>hi('vimCmdSep',         s:cdPink,         {}, 'none',   {})
call <sid>hi('vimOperParen',      s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('vimParenSep',       s:cdFront,        {}, 'none',   {})
call <sid>hi('vimSetSep',         s:cdFront,        {}, 'none',   {})
call <sid>hi('vimOper',           s:cdViolet,       {}, 'none',   {})
call <sid>hi('vimSep',            s:cdFront,        {}, 'none',   {})
call <sid>hi('vimOption',         s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('vimSet',            s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('vimLet',            s:cdBlue,         {}, 'none',   {})
call <sid>hi('vimMap',            s:cdPink,         {}, 'none',   {})
call <sid>hi('vimNotation',       s:cdYellowOrange, {}, 'none',   {})
call <sid>hi('vimMapMod',         s:cdGray,         {}, 'none',   {})
call <sid>hi('vimMapModKey',      s:cdBlue,         {}, 'none',   {})
call <sid>hi('vimMapLhs',         s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('vimMapRhs',         s:cdBlueGreen,    {}, 'none',   {})
call <sid>hi('vimIsCommand',      s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('vimFtOption',       s:cdBlueGreen,    {}, 'none',   {})
call <sid>hi('vimFtCmd',          s:cdPink,         {}, 'none',   {})
call <sid>hi('vimHighlight',      s:cdBlue,         {}, 'none',   {})
call <sid>hi('vimHiAttrib',       s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('vimHiLink',         s:cdYellowOrange, {}, 'none',   {})
call <sid>hi('vimHLGroup',        s:cdYellowOrange, {}, 'none',   {})
call <sid>hi('vimEchoHL',         s:cdBlueGreen,    {}, 'none',   {})
call <sid>hi('vimAutoCmd',        {},               {}, 'none',   {})
call <sid>hi('vimAutoEvent',      {},               {}, 'none',   {})
call <sid>hi('vimAutoCmdSfxList', {},               {}, 'none',   {})
" Vim Syntax RegEx:
call <sid>hi('vimSynRegPat',      s:cdLightRed,     {}, 'none',   {})
call <sid>hi('vimPatSep',         s:cdYellowOrange, {}, 'none',   {})
call <sid>hi('vimPatSepR',        s:cdYellowOrange, {}, 'none',   {})
call <sid>hi('vimSynPatRange',    s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('vimSynPatMod',      s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('vimSynNotPatRange', s:cdBlue,         {}, 'none',   {})
call <sid>hi('vimSynMatchRegion', s:cdLightRed,     {}, 'none',   {})
" call <sid>hi('vimSynPatRegion',   {},               {}, 'none',   {})
call <sid>hi('vimPatRegion',      s:cdYellow,       {}, 'none',   {})
call <sid>hi('vimCollection',     s:cdBlue,         {}, 'none',   {})
" Vim Syntax Groups:
call <sid>hi('vimGroupList',      s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('vimGroup',          s:cdYellowOrange, {}, 'none',   {})
call <sid>hi('vimHiGroup',        s:cdBlueGreen,    {}, 'none',   {})
call <sid>hi('vimGroupName',      s:cdLightBlue,    {}, 'none',   {})
call <sid>hi('vimGroupAdd',       s:cdPink,         {}, 'none',   {})
call <sid>hi('vimClusterName',                      {}, {}, 'none',   {})
call <sid>hi('vimSynNextGroup',   s:cdPink,         {}, 'none',   {})
" Vim Syntax:
call <sid>hi('vimSyn',            {},               {}, 'none',   {})
call <sid>hi('vimSynCase',        s:cdBlue,         {}, 'none',   {})
call <sid>hi('vimSyncLinecont',   s:cdBlue,         {}, 'none',   {})
call <sid>hi('vimSyncMatch',      s:cdBlue,         {}, 'none',   {})
call <sid>hi('vimSyntax',         s:cdPink,         {}, 'none',   {})
" call <sid>hi('vimSynCase',        {},               {}, 'none',   {})
call <sid>hi('vimSynRegion',     {},               {}, 'none',   {})
call <sid>hi('vimSynKeyRegion',  {},         {}, 'none',   {})
call <sid>hi('vimSynKeyOpt',      s:cdPink,         {}, 'none',   {})
call <sid>hi('vimSynType',        s:cdBlueGreen,    {}, 'none',   {})
call <sid>hi('vimSynContains',    s:cdPink,         {}, 'none',   {})
call <sid>hi('vimSynReg',         s:cdPink,         {}, 'none',   {})
call <sid>hi('vimSynRegOpt',      s:cdBlue,         {}, 'none',   {})
call <sid>hi('vimSynMtchOpt',     s:cdPink,         {}, 'none',   {})
call <sid>hi('vimSynMtchGrp',     s:cdPink,         {}, 'none',   {})
" TODO: These are defined but I'm not sure how or if they're used
" call <sid>hi('nvim', {}, {}, 'none', {})
call <sid>hi('nvimMap',           s:cdViolet,  {}, 'none', {})
call <sid>hi('nvimMapBang',       s:cdViolet,  {}, 'none', {})
call <sid>hi('nvimUnmap',         s:cdViolet,  {}, 'none', {})
call <sid>hi('nvimHLGroup',       s:cdViolet,  {}, 'none', {})
" call <sid>hi('termcursor',        s:cdViolet, s:cdGreen, 'none', {})
" call <sid>hi('termcursornc',      s:cdViolet, s:cdBrightBlue, 'none', {})
" call <sid>hi('quickfixline',      s:cdViolet, s:cdViolet, 'none', {})

" YAML:
" call <sid>hi('yaml',                  {},               {}, 'none', {})
call <sid>hi('yamlBlockMappingKey',     s:cdLightBlue,    {}, 'none', {})
call <sid>hi('yamlFlowString',          s:cdOrange,       {}, 'none', {})
call <sid>hi('yamlFlowStringDelimiter', s:cdOrange,       {}, 'none', {})
call <sid>hi('yamlEscape',              s:cdYellowOrange, {}, 'none', {})
call <sid>hi('yamlDocumentStart',       s:cdPink,         {}, 'none', {})
call <sid>hi('yamlDocumentEnd',         s:cdPink,         {}, 'none', {})
call <sid>hi('yamlKeyValueDelimiter',   s:cdDarkGray,     {}, 'none', {})

" ==============================================================================
"  === Plugin Filetypes ===
" ==============================================================================

" Snippet:
" (SirVer/ultisnips)
call <sid>hi('snipSnippet',              {},               {}, 'none', {})
call <sid>hi('snipSnippetBody',          s:cdFront,        {}, 'none', {})
call <sid>hi('snipSnippetDocString',     s:cdOrange,       {}, 'none', {})
call <sid>hi('snipSnippetTrigger',       s:cdYellow,       {}, 'none', {})
call <sid>hi('snipEscape',               s:cdYellowOrange, {}, 'none', {})
call <sid>hi('snipSnippetHeader',        s:cdDarkGray,     {}, 'none', {})
call <sid>hi('snipSnippetFooter',        s:cdDarkGray,     {}, 'none', {})
call <sid>hi('snipSnippetFooterKeyword', s:cdGray,         {}, 'none', {})
call <sid>hi('snipSnippetHeaderKeyword', s:cdGray,         {}, 'none', {})
call <sid>hi('snipTabStop',              s:cdBlue,         {}, 'none', {})
call <sid>hi('snipTabStopDefault',       s:cdLightBlue,    {}, 'none', {})
call <sid>hi('snipVisual',               s:cdSelection,    {}, 'none', {})
call <sid>hi('snipCommand',              s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('snipVimlCommand',          s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('snipVimlCommandV',         s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('snipPythonCommand',        s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('snipPythonCommandP',       s:cdBlueGreen,    {}, 'none', {})
" call <sid>hi('snipSnippetOptions',       {}, {}, 'none', {})
call <sid>hi('snipGlobal',               s:cdPink,         {}, 'none', {})
call <sid>hi('snipGlobalPHeader',        s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('snipGlobalHeaderKeyword',  s:cdPink,         {}, 'none', {})
call <sid>hi('snipSnippetOptionFlag',    s:cdPink,         {}, 'none', {})
call <sid>hi('snipLeadingSpaces',        s:cdNop,          {}, 'none', {})
call <sid>hi('snipLeadingSpaces',        s:cdNop,          {}, 'none', {})

" Neosnippet:
" (Shougo/neosnippet)
call <sid>hi('neosnippetName',             s:cdBlueGreen, {}, 'none', {})
call <sid>hi('neosnippetAbbr',             s:cdOrange,    {}, 'none', {})
call <sid>hi('neosnippetOption',           s:cdBlue,      {}, 'none', {})
call <sid>hi('neosnippetWord',             s:cdFront,     {}, 'none', {})
call <sid>hi('neosnippetPlaceHolder',      s:cdLightBlue, {}, 'none', {})
call <sid>hi('neosnippetKeyword',          s:cdPink,      {}, 'none', {})
call <sid>hi('neosnippetStatementAbbr',    s:cdPink,      {}, 'none', {})
call <sid>hi('neosnippetStatementName',    s:cdPink,      {}, 'none', {})
call <sid>hi('neosnippetStatementOptions', s:cdPink,      {}, 'none', {})

" Tmux:
call <sid>hi('tmuxString',              s:cdOrange,       {}, 'none', {})
call <sid>hi('tmuxStringDelimiter',     s:cdOrange,       {}, 'none', {})
call <sid>hi('tmuxOptions',             s:cdPink,         {}, 'none', {})
call <sid>hi('tmuxFmtConditional',      s:cdPink,         {}, 'none', {})
call <sid>hi('tmuxOptsSet',             s:cdYellowOrange, {}, 'none', {})
call <sid>hi('tmuxOptsSetw',            s:cdYellowOrange, {}, 'none', {})
call <sid>hi('tmuxWindowPaneCmds',      s:cdYellow,       {}, 'none', {})
call <sid>hi('tmuxAttrEquals',          s:cdFront,        {}, 'none', {})
call <sid>hi('tmuxShellInpol',          s:cdFront,        {}, 'none', {})
call <sid>hi('tmuxAttrSeparator',       s:cdGray,         {}, 'none', {})
call <sid>hi('tmuxFmtInpol',            s:cdGray,         {}, 'none', {})
call <sid>hi('tmuxSpecialCmds',         s:cdBlue,         {}, 'none', {})
call <sid>hi('tmuxFmtInpolDelimiter',   s:cdBlue,         {}, 'none', {})
call <sid>hi('tmuxAttrInpolDelimiter',  s:cdBlue,         {}, 'none', {})
call <sid>hi('tmuxShellInpolDelimiter', s:cdBlue,         {}, 'none', {})
call <sid>hi('tmuxURL',                 s:cdLightBlue,    {}, 'none', {})
call <sid>hi('tmuxColor',               s:cdLightBlue,    {}, 'none', {})
call <sid>hi('tmuxStyle',               s:cdLightBlue,    {}, 'none', {})
call <sid>hi('tmuxVariable',            s:cdLightBlue,    {}, 'none', {})
call <sid>hi('tmuxAttrBgFg',            s:cdLightBlue,    {}, 'none', {})
call <sid>hi('tmuxFmtVariable',         s:cdLightBlue,    {}, 'none', {})
call <sid>hi('tmuxKey',                 s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('tmuxFmtAlias',            s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('tmuxDateInpol',           s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('tmuxKeySymbol',           s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('tmuxOptionValue',         s:cdBlueGreen,    {}, 'none', {})

" Vimwiki:
call <sid>hi('VimwikiHeaderChar', s:cdPink,  {}, 'none', {})
call <sid>hi('VimwikiHeader1',    s:cdBlue,  {}, 'none', {})
call <sid>hi('VimwikiHeader2',    s:cdBlue,  {}, 'none', {})
call <sid>hi('VimwikiHeader3',    s:cdBlue,  {}, 'none', {})
call <sid>hi('VimwikiHeader4',    s:cdBlue,  {}, 'none', {})
call <sid>hi('VimwikiHeader5',    s:cdBlue,  {}, 'none', {})
call <sid>hi('VimwikiHeader6',    s:cdBlue,  {}, 'none', {})
call <sid>hi('VimwikiListTodo',   s:cdFront,  s:cdGreen, 'none', {})
call <sid>hi('VimwikiH1Folding',  s:cdFront, {}, 'none', {})

" Wiki:
" (lervag/wiki)
call <sid>hi('wikiHeader1',         s:cdBlue,       {}, 'none', {})
call <sid>hi('wikiHeader2',         s:cdBlue,       {}, 'none', {})
call <sid>hi('wikiHeader3',         s:cdBlue,       {}, 'none', {})
call <sid>hi('wikiHeader4',         s:cdBlue,       {}, 'none', {})
call <sid>hi('wikiList',            s:cdBrightBlue, {}, 'none', {})
call <sid>hi('wikiLine',            s:cdBrightBlue, {}, 'none', {})
call <sid>hi('wikiLinkWiki',        s:cdLightBlue,  {}, 'none', {})
" call <sid>hi('wikiLinkWikiConceal', {},             {}, 'none', {})

" Org:
" (jceb/vim-orgmode)
call <sid>hi('hyperlink',             s:cdLightBlue,    {}, 'none', {})
call <sid>hi('org_title',             s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('org_heading1',          s:cdPink,         {}, 'none', {})
call <sid>hi('org_heading2',          s:cdBrightBlue,   {}, 'none', {})
call <sid>hi('org_heading3',          s:cdGreen,        {}, 'none', {})
call <sid>hi('org_heading4',          s:cdYellowOrange, {}, 'none', {})
call <sid>hi('org_heading5',          s:cdLightRed,     {}, 'none', {})
call <sid>hi('org_shade_stars',       s:cdBrightBlack,  {}, 'none', {})
call <sid>hi('org_list_item',         s:cdBrightBlue,   {}, 'none', {})
call <sid>hi('org_list_unordered',    s:cdBrightBlue,   {}, 'none', {})
call <sid>hi('org_list_ckeckbox',     s:cdBrightBlue,   {}, 'none', {})
call <sid>hi('org_todo_keyword_done', s:cdBrightBlue,   {}, 'none', {})


" ==============================================================================
"  === Plugins ===
" ==============================================================================
" Ale:
" (w0rp/ale)
call <sid>hi('ALEInfo',             {},               {},              'none', {})
call <sid>hi('ALEError',            {},               {},              'none', {})
call <sid>hi('ALEWarning',          {},               {},              'none', {})
call <sid>hi('ALEStyleError',       {},               {},              'none', {})
call <sid>hi('ALEStyleWarning',     {},               {},              'none', {})
call <sid>hi('ALEInfoSign',         s:cdLightGreen,   s:cdBrightBlack, 'none', {})
call <sid>hi('ALEErrorSign',        s:cdLightRed,     s:cdBrightBlack, 'none', {})
call <sid>hi('ALEWarningSign',      s:cdYellowOrange, s:cdBrightBlack, 'none', {})
call <sid>hi('ALEStyleErrorSign',   s:cdYellow,       s:cdBrightBlack, 'none', {})
call <sid>hi('ALEStyleWarningSign', s:cdYellow,       s:cdBrightBlack, 'none', {})
call <sid>hi('ALEInfoLine',         {},               {},              'none', {})
call <sid>hi('ALEErrorLine',        {},               {},              'none', {})
call <sid>hi('ALEWarningLine',      {},               {},              'none', {})

" Bookmarks:
" (MattesGroeger/vim-bookmarks)
call <sid>hi('BookmarkSign',           s:cdBlueGreen, s:cdBrightBlack, 'none', {})
call <sid>hi('BookmarkAnnotationSign', s:cdBlueGreen, s:cdBrightBlack, 'none', {})
call <sid>hi('BookmarkLine',           {},            {},              'none', {})
call <sid>hi('BookmarkAnnotationLine', {},            {},              'none', {})


" Buftabline:
" (ap/vim-buftabline)
call <sid>hi('BufTabLineCurrent', s:cdBack,  s:cdGreen,       'none', {})
call <sid>hi('BufTabLineActive',  s:cdGreen, s:cdBrightBlack, 'none', {})
call <sid>hi('BufTabLineHidden',  s:cdFront, s:cdBrightBlack, 'none', {})
call <sid>hi('BufTabLineFill',    {},        s:cdBrightBlack, 'none', {})

" Cheat40:
call <sid>hi('Cheat40Descr',        {},               {}, 'none', {})
call <sid>hi('Cheat40Command',      s:cdLightBlue,    {}, 'none', {})
call <sid>hi('Cheat40Header',       s:cdBrightBlue,   {}, 'none', {})
call <sid>hi('Cheat40Divider',      s:cdBrightBlue,   {}, 'none', {})
call <sid>hi('Cheat40About',        {},               {}, 'none', {})
call <sid>hi('Cheat40FirstLine',    s:cdPink,         {}, 'none', {})
call <sid>hi('Cheat40BeginSection', {},               {}, 'none', {})
call <sid>hi('Cheat40EndSection',   {},               {}, 'none', {})
call <sid>hi('Cheat40Tag',          s:cdGreen,        {}, 'none', {})
call <sid>hi('Cheat40Backtick',     s:cdGreen,        {}, 'none', {})
call <sid>hi('Cheat40Mode',         s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('Cheat40Angle',        s:cdGreen,        {}, 'none', {})
call <sid>hi('Cheat40DblAngle',     s:cdYellowOrange, {}, 'none', {})
call <sid>hi('Cheat40Comment',      s:cdBrightBlue,   {}, 'italic', {})
call <sid>hi('Cheat40Hash',         s:cdFront,        {}, 'none', {})
call <sid>hi('Cheat40Runtime',      {},               {}, 'none', {})

" Denite:
" (Shougo/denite.nvim)
" call <sid>hi('deniteMatchedChar',   s:cdBlueGreen, {}, 'underline', {})
" call <sid>hi('deniteMatchedRange', s:, {}, 'none', {})
" call <sid>hi('deniteStatusLine', s:, {}, 'none', {})
" call <sid>hi('deniteSourceLine_', s:, {}, 'none', {})
" call <sid>hi('denitePrompt',        s:cdBlueGreen, {}, 'none', {})
" call <sid>hi('deniteConcealedMark', s:cdDarkBlue, {}, 'none', {})
call <sid>hi('deniteModeNormal',    {},    {}, 'underline', {})
call <sid>hi('deniteModeInsert',    {},    {}, 'bold', {})

" GitGutter:
" (airblade/vim-gitgutter)
call <sid>hi('GitGutterAdd',              s:cdGreen,        s:cdBrightBlack, 'none', {})
call <sid>hi('GitGutterChange',           s:cdYellowOrange, s:cdBrightBlack, 'none', {})
call <sid>hi('GitGutterDelete',           s:cdLightRed,     s:cdBrightBlack, 'none', {})
call <sid>hi('GitGutterChangeDelete',     s:cdYellowOrange, s:cdBrightBlack, 'none', {})
call <sid>hi('GitGutterAddLine',          {},               {},              'none', {})
call <sid>hi('GitGutterChangeLine',       {},               {},              'none', {})
call <sid>hi('GitGutterDeleteLine',       {},               {},              'none', {})
call <sid>hi('GitGutterChangeDeleteLine', {},               {},              'none', {})

" GitHub:
" (junegunn/vim-github-dashboard)
call <sid>hi('githubNumber',  s:cdLightGreen, {}, 'none', {})
call <sid>hi('githubTime',    s:cdGray,       {}, 'none', {})
call <sid>hi('githubUser',    s:cdBlue,       {}, 'none', {})
call <sid>hi('githubBranch',  s:cdPink,       {}, 'none', {})
call <sid>hi('githubRepo',    s:cdOrange,     {}, 'none', {})
call <sid>hi('githubSHA',     s:cdLightGreen, {}, 'none', {})
call <sid>hi('githubKeyword', s:cdBlueGreen,  {}, 'none', {})
call <sid>hi('githubCommit',  s:cdBlueGreen,  {}, 'none', {})
call <sid>hi('githubRelease', s:cdBlueGreen,  {}, 'none', {})
call <sid>hi('githubTag',     s:cdBlueGreen,  {}, 'none', {})
call <sid>hi('githubEdit',    s:cdBlueGreen,  {}, 'none', {})
call <sid>hi('githubGist',    s:cdBlueGreen,  {}, 'none', {})

" LeaderGuide:
" (hecal3/vim-leader-guide)
call <sid>hi('LeaderGuideKeys',     s:cdBlueGreen, {}, 'none', {})
call <sid>hi('LeaderGuideBrackets', s:cdDarkGray,  {}, 'none', {})
call <sid>hi('LeaderGuideDesc',     s:cdBlue,      {}, 'none', {})

" Sneak:
" (justinmk/vim-sneak)
" call <sid>hi('Sneak',      s:cdNop, s:cdDarkGray, 'none', {})
" call <sid>hi('SneakScope', s:cdNop, s:cdDarkGray, 'none', {})
" call <sid>hi('SneakLabel', s:cdNop, s:cdBlueGreen, 'none', {})

" Startify:
" (mhinz/vim-startify)
call <sid>hi('StartifyFile',    s:cdBlueGreen,  {}, 'none', {})
call <sid>hi('StartifyBracket', s:cdBack,       {}, 'none', {})
call <sid>hi('StartifyNumber',  s:cdLightGreen, {}, 'none', {})
call <sid>hi('StartifyVar',     s:cdLightGreen, {}, 'none', {})
call <sid>hi('StartifySpecial', s:cdLightGreen, {}, 'none', {})
call <sid>hi('StartifySlash',   s:cdDarkGray,   {}, 'none', {})
call <sid>hi('StartifyPath',    s:cdDarkGray,   {}, 'none', {})
call <sid>hi('StartifySelect',  {},             {}, 'none', {})
call <sid>hi('StartifyHeader',  {},             {}, 'none', {})
call <sid>hi('StartifySection', s:cdPink,       {}, 'none', {})

" Swoop:
" (pelodelfuego/vim-swoop)
" call <sid>hi('SwoopBufferLineHi', s:, {}, 'none', {})
" call <sid>hi('SwoopPatternHi', s:, {}, 'none', {})

" Tagbar:
" (majutsushi/tagbar)
call <sid>hi('TagbarHelp',       s:cdDarkGray,   {}, 'none', {})
call <sid>hi('TagbarHelpKey',    s:cdGray,       {}, 'none', {})
call <sid>hi('TagbarHelpTitle',  s:cdViolet,     {}, 'none', {})
call <sid>hi('TagbarKind',       s:cdBlueGreen,  {}, 'none', {})
call <sid>hi('TagbarNestedKind', s:cdLightGreen, {}, 'none', {})
call <sid>hi('TagbarScope',      s:cdYellow,     {}, 'none', {})
call <sid>hi('TagbarType',       s:cdBlueGreen,  {}, 'none', {})
call <sid>hi('TagbarSignature',  s:cdLightBlue,  {}, 'none', {})
call <sid>hi('TagbarPseudoID',   s:cdPink,       {}, 'none', {})
call <sid>hi('TagbarFoldIcon',   s:cdFront,      {}, 'none', {})
call <sid>hi('TagbarHighlight',                  {}, {}, 'italic', {})

" Unite:
" (Shougo/unite.vim)
call <sid>hi('uniteStatusNormal',           s:cdGreen,       {}, 'none', {})
call <sid>hi('uniteStatusInsert',           s:cdBlue,        {}, 'none', {})
" call <sid>hi('uniteStatusSourceNames',      s:cdBlueGreen,    {}, 'none', {})
" call <sid>hi('uniteStatusMessage',          s:cdGreen,        {}, 'none', {})
" call <sid>hi('uniteStatusSourceCandidates', s:cdYellow,       {}, 'none', {})
" call <sid>hi('uniteStatusHead',             s:cdYellowOrange, {}, 'none', {})
call <sid>hi('unitePrompt',                 s:cdBlueGreen,    {}, 'none', {})
" call <sid>hi('uniteStatusLineNR',           s:cdDarkGray,     {}, 'none', {})

" VimFiler:
" (romgrk/vimfiler-prompt)
call <sid>hi('FilerCursor',           s:cdDarkGray,       {}, 'none', {})
call <sid>hi('FilerSelected',         s:cdDarkGray,       {}, 'none', {})
call <sid>hi('FilerActive',           s:cdDarkGray,       {}, 'none', {})
call <sid>hi('FilerMatch',            {},                 {}, 'none', {})
call <sid>hi('FilerNoMatch',          {},                 {}, 'none', {})
call <sid>hi('FilerPrompt',           s:cdBlueGreen,      {}, 'none', {})
call <sid>hi('FilerInput',            s:cdDarkGray,       {}, 'none', {})
call <sid>hi('FilerCompletion',       s:cdDarkGray,       {}, 'none', {})
" (Shougo/vimfiler)
call <sid>hi('vimfilerStatus',           {},                 {}, 'none',   {})
call <sid>hi('vimfilerColumn__devicons', s:cdGray,           {}, 'none',   {})
call <sid>hi('vimfilerDirectory',        s:cdBlue,           {}, 'none',   {})
call <sid>hi('vimfilerCurrentDirectory', s:cdBlueGreen,      {}, 'italic', {})
" call <sid>hi('vimfilerMask',             s:cdBlue,           {}, 'none', {})
call <sid>hi('vimfilerMark',             s:cdGreen,          {}, 'none',   {})
call <sid>hi('vimfilerNonMark',          s:cdFront,          {}, 'none',   {})
call <sid>hi('vimfilerLeaf',             s:cdBlue,           {}, 'none',   {})
call <sid>hi('vimfilerNormalFile',       s:cdFront,          {}, 'none',   {})
call <sid>hi('vimfilerOpenedFile',       s:cdLightBlue,      {}, 'none',   {})
call <sid>hi('vimfilerClosedFile',       s:cdBlue,           {}, 'none',   {})
call <sid>hi('vimfilerMarkedFile',       s:cdGreen,          {}, 'none',   {})
call <sid>hi('vimfilerROFile',           s:cdGray,           {}, 'none',   {})
