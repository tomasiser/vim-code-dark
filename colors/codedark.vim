
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

" General appearance colors:
" (some of them may be unused)

let s:cdNone =               { 'gui': 'NONE',    'cterm': 'NONE',    'cterm256': 'NONE'}
let s:cdFront =              { 'gui': '#D4D4D4', 'cterm': s:cterm05, 'cterm256': '188' }
let s:cdBackGround =         { 'gui': '#1E1E1E', 'cterm': s:cterm00, 'cterm256': '234' }
let s:cdBack =               { 'gui': '',        'cterm': '',        'cterm256': ''    }

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

if !exists('g:codedark_conservative')
    let g:codedark_conservative=0
endif

let s:cdDarkGray =     {'gui': '#505050', 'cterm': s:cterm04, 'cterm256': '08'}
let s:cdBrightBlack =  {'gui': '#303030', 'cterm': s:cterm04, 'cterm256': '234'}
let s:cdBrightBlue =   {'gui': '#007ACC', 'cterm': s:cterm0D, 'cterm256': '73'}

let s:cdGray =         { 'gui': '#808080', 'cterm': s:cterm04, 'cterm256': '08'}
let s:cdViolet =       { 'gui': '#646695', 'cterm': s:cterm04, 'cterm256': '60'}
let s:cdBlue =         { 'gui': '#569CD6', 'cterm': s:cterm0D, 'cterm256': '75'}
let s:cdDarkBlue =     { 'gui': '#223E55', 'cterm': s:cterm0D, 'cterm256': '73'}
let s:cdLightBlue =    { 'gui': '#9CDCFE', 'cterm': s:cterm0C, 'cterm256': '117'}
if g:codedark_conservative | let s:cdLightBlue = s:cdFront | endif
let s:cdGreen =        { 'gui': '#608B4E', 'cterm': s:cterm0B, 'cterm256': '65'}
let s:cdBlueGreen =    { 'gui': '#4EC9B0', 'cterm': s:cterm0F, 'cterm256': '43'}
let s:cdLightGreen =   { 'gui': '#B5CEA8', 'cterm': s:cterm09, 'cterm256': '151'}
let s:cdRed =          { 'gui': '#F44747', 'cterm': s:cterm08, 'cterm256': '203'}
let s:cdOrange =       { 'gui': '#CE9178', 'cterm': s:cterm0F, 'cterm256': '173'}
let s:cdLightRed =     { 'gui': '#D16969', 'cterm': s:cterm08, 'cterm256': '167'}
if g:codedark_conservative | let s:cdLightRed = s:cdOrange | endif
let s:cdYellowOrange = {'gui': '#D7BA7D', 'cterm': s:cterm0A,  'cterm256': '179'}
let s:cdYellow =       {'gui': '#DCDCAA', 'cterm': s:cterm0A,  'cterm256': '187'}
if g:codedark_conservative | let s:cdYellow = s:cdFront | endif
let s:cdPink =         {'gui': '#C586C0', 'cterm': s:cterm0E,  'cterm256': '176'}
if g:codedark_conservative | let s:cdPink = s:cdBlue | endif

" Vim editor colors
"    <sid>hi( GROUP,         FOREGROUND,     BACKGROUND,             ATTRIBUTE,   SPECIAL)
call <sid>hi('Normal',       s:cdFront,      s:cdBack,               'none',      {})
call <sid>hi('NormalNC',     {},             s:cdBrightBlack,        'none',      {})
call <sid>hi('ColorColumn',  {},             s:cdBrightBlack,        'none',      {})
call <sid>hi('Cursor',       s:cdBlue,       s:cdBlue,               'none',      {})
call <sid>hi('CursorLine',   {},             s:cdBrightBlack,        'none',      {})
call <sid>hi('Directory',    s:cdBlue,       s:cdBack,               'none',      {})
call <sid>hi('DiffAdd',      {},             s:cdDiffGreenDark,      'none',      {})
call <sid>hi('DiffChange',   {},             s:cdDiffRedDark,        'none',      {})
call <sid>hi('DiffDelete',   {},             s:cdDiffRedLight,       'none',      {})
call <sid>hi('DiffText',     {},             s:cdDiffRedLight,       'none',      {})
call <sid>hi('EndOfBuffer',  s:cdBrightBlack,s:cdBack,               'none',      {})
call <sid>hi('ErrorMsg',     s:cdRed,        s:cdBack,               'none',      {})
call <sid>hi('VertSplit',    s:cdBrightBlack,s:cdBrightBlack,        'none',      {})
call <sid>hi('Folded',       s:cdLeftLight,  s:cdLeftDark,           'underline', {})
call <sid>hi('FoldColumn',   s:cdLineNumber, s:cdBack,               'none',      {})
call <sid>hi('SignColumn',   {},             s:cdBack,               'none',      {})
call <sid>hi('IncSearch',    s:cdNone,       s:cdSearchCurrent,      'none',      {})
" call <sid>hi('LineNr',       s:cdLineNumber, s:cdBack,               'none',      {})
" call <sid>hi('CursorLineNr', s:cdPopupFront, s:cdBack,               'none',      {})
call <sid>hi('LineNr',       s:cdBackGround, s:cdBrightBlack,        'none',      {})
call <sid>hi('CursorLineNr', s:cdFront,      s:cdBrightBlack,        'none',      {})
call <sid>hi('MatchParen',   s:cdNone,       s:cdCursorDark,         'none',      {})
call <sid>hi('ModeMsg',      s:cdFront,      s:cdLeftDark,           'none',      {})
call <sid>hi('MoreMsg',      s:cdFront,      s:cdLeftDark,           'none',      {})
call <sid>hi('NonText',      s:cdLineNumber, s:cdBack,               'none',      {})
call <sid>hi('Pmenu',        s:cdPopupFront, s:cdPopupBack,          'none',      {})
call <sid>hi('PmenuSel',     s:cdPopupFront, s:cdPopupHighlightBlue, 'none',      {})
call <sid>hi('PmenuSbar',    {},             s:cdPopupHighlightGray, 'none',      {})
call <sid>hi('PmenuThumb',   {},             s:cdPopupFront,         'none',      {})
call <sid>hi('Question',     s:cdBlue,       s:cdBack,               'none',      {})
call <sid>hi('Search',       s:cdNone,       s:cdSearch,             'none',      {})
call <sid>hi('SpecialKey',   s:cdBlue,       s:cdNone,               'none',      {})
call <sid>hi('SpellBad',     s:cdNone,       s:cdNone,               'undercurl', {})
call <sid>hi('SpellCap',     s:cdNone,       s:cdNone,               'undercurl', {})
call <sid>hi('SpellLocal',   s:cdNone,       s:cdNone,               'undercurl', {})
call <sid>hi('StatusLine',   s:cdFront,      s:cdLeftMid,            'none',      {})
" call <sid>hi('StatusLineNC', s:cdFront,      s:cdLeftDark,           'none',      {})
" call <sid>hi('StatusLine',   s:cdBrightBlack,s:cdBrightBlack,        'none',      {})
call <sid>hi('StatusLineNC', s:cdBrightBlack,s:cdBrightBlack,        'none',      {})
call <sid>hi('TabLine',      s:cdFront,      s:cdTabOther,           'none',      {})
call <sid>hi('TabLineFill',  s:cdFront,      s:cdTabOutside,         'none',      {})
call <sid>hi('TabLineSel',   s:cdFront,      s:cdTabCurrent,         'none',      {})
call <sid>hi('Title',        s:cdNone,       s:cdNone,               'bold',      {})
call <sid>hi('Visual',       s:cdNone,       s:cdSelection,          'none',      {})
call <sid>hi('VisualNOS',    s:cdNone,       s:cdSelection,          'none',      {})
call <sid>hi('WarningMsg',   s:cdOrange,     s:cdBack,               'none',      {})
call <sid>hi('WildMenu',     s:cdNone,       s:cdSelection,          'none',      {})

call <sid>hi('Comment',   s:cdDarkGray,   {}, 'none', {})

call <sid>hi('Constant',  s:cdBlue,       {}, 'none', {})
call <sid>hi('String',    s:cdOrange,     {}, 'none', {})
call <sid>hi('Character', s:cdOrange,     {}, 'none', {})
call <sid>hi('Number',    s:cdLightGreen, {}, 'none', {})
call <sid>hi('Boolean',   s:cdBlue,       {}, 'none', {})
call <sid>hi('Float',     s:cdLightGreen, {}, 'none', {})

call <sid>hi('Identifier', s:cdLightBlue, {}, 'none', {})
call <sid>hi('Function',   s:cdYellow,    {}, 'none', {})

call <sid>hi('Statement',      s:cdPink,  {}, 'none', {})
call <sid>hi('Conditional',    s:cdPink,  {}, 'none', {})
call <sid>hi('Repeat',         s:cdPink,  {}, 'none', {})
call <sid>hi('Label',          s:cdPink,  {}, 'none', {})
call <sid>hi('Operator',       s:cdFront, {}, 'none', {})
call <sid>hi('Keyword',        s:cdPink,  {}, 'none', {})
call <sid>hi('Exception',      s:cdPink,  {}, 'none', {})

call <sid>hi('PreProc',   s:cdPink, {}, 'none', {})
call <sid>hi('Include',   s:cdPink, {}, 'none', {})
call <sid>hi('Define',    s:cdPink, {}, 'none', {})
call <sid>hi('Macro',     s:cdPink, {}, 'none', {})
call <sid>hi('PreCondit', s:cdPink, {}, 'none', {})

call <sid>hi('Type',         s:cdBlue, {}, 'none', {})
call <sid>hi('StorageClass', s:cdBlue, {}, 'none', {})
call <sid>hi('Structure',    s:cdBlue, {}, 'none', {})
call <sid>hi('Typedef',      s:cdBlue, {}, 'none', {})

call <sid>hi('Special',        s:cdFront, {}, 'none', {})
call <sid>hi('SpecialChar',    s:cdFront, {}, 'none', {})
call <sid>hi('Tag',            s:cdFront, {}, 'none', {})
call <sid>hi('Delimiter',      s:cdFront, {}, 'none', {})
call <sid>hi('SpecialComment', s:cdGreen, {}, 'none', {})
call <sid>hi('Debug',          s:cdFront, {}, 'none', {})

call <sid>hi('Underlined', s:cdNone,  {},          'underline', {})
call <sid>hi('Conceal',    s:cdFront, s:cdBack,    'none',      {})
call <sid>hi('Ignore',     s:cdFront, {},          'none',      {})
call <sid>hi('Error',      s:cdRed,   s:cdBack,    'none',      {})
call <sid>hi('Todo',       s:cdNone,  s:cdLeftMid, 'none',      {})

" HELP:
call <sid>hi('helpHeadline',       s:cdPink, {}, 'none', {})
call <sid>hi('helpHeader',         s:cdPink, {}, 'none', {})
call <sid>hi('helpHyperTextEntry', s:cdOrange, {}, 'none', {})
call <sid>hi('helpHyperTextJump',  s:cdLightBlue, {}, 'none', {})
call <sid>hi('helpSectionDelim',   s:cdBrightBlue, {}, 'none', {})
call <sid>hi('helpExample',        s:cdOrange, {}, 'none', {})
call <sid>hi('helpSpecial',        s:cdBlueGreen, {}, 'none', {})
" call <sid>hi('helpBar',            s:, {}, 'none', {})
call <sid>hi('helpURL',            s:cdLightBlue, {}, 'none', {})
" call <sid>hi('helpNote',           s:, {}, 'none', {})
" call <sid>hi('helpOption',         s:, {}, 'none', {})
" call <sid>hi('help', s:, {}, 'none', {})
" call <sid>hi('help', s:, {}, 'none', {})

" HTML:
call <sid>hi('htmlTag',            s:cdGray, {}, 'none', {})
call <sid>hi('htmlEndTag',         s:cdGray, {}, 'none', {})
call <sid>hi('htmlTagName',        s:cdBlue, {}, 'none', {})
call <sid>hi('htmlSpecialTagName', s:cdBlue, {}, 'none', {})
call <sid>hi('htmlArg',            s:cdLightBlue, {}, 'none', {})

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
call <sid>hi('jsNoise',              s:cdDarkGray,     {}, 'none', {})
call <sid>hi('jsGlobalObjects',      s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('jsGlobalNodeObjects',  s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('jsObjectProp',         s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('jsObjectStringKey',    s:cdLightBlue,    {}, 'none', {})
call <sid>hi('jsTemplateBraces',     s:cdBlue,         {}, 'none', {})
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

" Python:
call <sid>hi('pythonAttribute',     s:cdLightBlue,  {}, 'none', {})
call <sid>hi('pythonInclude',       s:cdPink,       {}, 'none', {})
call <sid>hi('pythonFunction',      s:cdYellow,     {}, 'none', {})
call <sid>hi('pythonOperator',      s:cdPink,       {}, 'none', {})
call <sid>hi('pythonStatement',     s:cdPink,       {}, 'none', {})
call <sid>hi('pythonString',        s:cdOrange,     {}, 'none', {})
call <sid>hi('pythonNumber',        s:cdLightGreen, {}, 'none', {})
call <sid>hi('pythonTrippleQuotes', s:cdDarkGray,   {}, 'none', {})

" Ruby:
call <sid>hi('rubyClassNameTag', s:cdBlueGreen, {}, 'none', {})

" Golang:
call <sid>hi('goPackage',               s:cdBlue,      {}, 'none', {})
call <sid>hi('goImport',                s:cdBlue,      {}, 'none', {})
call <sid>hi('goVar',                   s:cdBlue,      {}, 'none', {})
call <sid>hi('goConst',                 s:cdBlue,      {}, 'none', {})
call <sid>hi('goStatement',             s:cdPink,      {}, 'none', {})
call <sid>hi('goType',                  s:cdBlue,      {}, 'none', {})
call <sid>hi('goSignedInts',            s:cdBlue,      {}, 'none', {})
call <sid>hi('goUnsignedInts',          s:cdBlue,      {}, 'none', {})
call <sid>hi('goFloats',                s:cdBlue,      {}, 'none', {})
call <sid>hi('goComplexes',             s:cdBlue,      {}, 'none', {})
call <sid>hi('goBuiltins',              s:cdYellow,    {}, 'none', {})
call <sid>hi('goBoolean',               s:cdBlue,      {}, 'none', {})
call <sid>hi('goPredefinedIdentifiers', s:cdBlue,      {}, 'none', {})
call <sid>hi('goTodo',                  s:cdGreen,     {}, 'none', {})
call <sid>hi('goDeclaration',           s:cdBlue,      {}, 'none', {})
call <sid>hi('goDeclType',              s:cdBlue,      {}, 'none', {})
call <sid>hi('goTypeDecl',              s:cdBlue,      {}, 'none', {})
call <sid>hi('goTypeName',              s:cdBlueGreen, {}, 'none', {})
call <sid>hi('goVarAssign',             s:cdLightBlue, {}, 'none', {})
call <sid>hi('goVarDefs',               s:cdLightBlue, {}, 'none', {})
call <sid>hi('goReceiver',              s:cdFront,     {}, 'none', {})
call <sid>hi('goReceiverType',          s:cdDarkBlue,  {}, 'none', {})
call <sid>hi('goFunctionCall',          s:cdYellow,    {}, 'none', {})
call <sid>hi('goMethodCall',            s:cdYellow,    {}, 'none', {})
call <sid>hi('goSingleDecl',            s:cdLightBlue, {}, 'none', {})

" VimL:
call <sid>hi('vimUserFunc',      s:cdYellow,       {}, 'none', {})
call <sid>hi('vimUsrCmd',        s:cdYellow,         {}, 'none', {})
call <sid>hi('vimFunction',      s:cdYellow,       {}, 'none', {})
call <sid>hi('vimFunctionError', s:cdRed,          s:cdBack, 'none', {})
call <sid>hi('vimContinue',      s:cdDarkGray,     {}, 'none', {})
call <sid>hi('vimNotFunc',       s:cdPink,         {}, 'none', {})
call <sid>hi('vimCommand',       s:cdPink,         {}, 'none', {})
call <sid>hi('vimCmdSep',        s:cdPink,         {}, 'none', {})
call <sid>hi('vimBracket',       s:cdGray,         {}, 'none', {})
call <sid>hi('vimOperParen',     s:cdFront,        {}, 'none', {})
call <sid>hi('vimParenSep',      s:cdFront,        {}, 'none', {})
call <sid>hi('vimSetSep',        s:cdFront,        {}, 'none', {})
call <sid>hi('vimOper',          s:cdFront,        {}, 'none', {})
call <sid>hi('vimSep',           s:cdFront,        {}, 'none', {})
call <sid>hi('vimOption',        s:cdLightBlue,    {}, 'none', {})
call <sid>hi('vimSet',           s:cdLightBlue,    {}, 'none', {})
call <sid>hi('vimLet',           s:cdBlue,         {}, 'none', {})
call <sid>hi('vimMap',           s:cdPink,         {}, 'none', {})
call <sid>hi('vimNotation',      s:cdBlue,         {}, 'none', {})
call <sid>hi('vimMapModKey',     s:cdYellowOrange, {}, 'none', {})
call <sid>hi('vimMapLhs',        s:cdYellowOrange, {}, 'none', {})
call <sid>hi('vimMapRhs',        s:cdBlueGreen,    {}, 'none', {})
" call <sid>hi('vimIsCommand', s:, {}, 'none', {})
call <sid>hi('vimFtOption',      s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('vimFtCmd',         s:cdPink,         {}, 'none', {})
call <sid>hi('vimSynType',       s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('vimHighlight',     s:cdBlue,         {}, 'none', {})
call <sid>hi('vimHiAttrib',      s:cdLightBlue,    {}, 'none', {})
" call <sid>hi('vimHiGui',     s:, {}, 'none', {})
call <sid>hi('vimGroup',         s:cdYellowOrange, {}, 'none', {})
" call <sid>hi('vimAutoCmd',    s:, {}, 'none', {})
" call <sid>hi('vimAutoEvent', s:, {}, 'none', {})
" call <sid>hi('vimAutoCmdSfxList', s:, {}, 'none', {})

" Markdown:
" (tpope/vim-markdown)
call <sid>hi('markdownH1',                s:cdBrightBlue, {}, 'none',   {})
call <sid>hi('markdownH2',                s:cdBrightBlue, {}, 'none',   {})
call <sid>hi('markdownH3',                s:cdBrightBlue, {}, 'none',   {})
call <sid>hi('markdownH4',                s:cdBrightBlue, {}, 'none',   {})
call <sid>hi('markdownH5',                s:cdBrightBlue, {}, 'none',   {})
call <sid>hi('markdownH6',                s:cdBrightBlue, {}, 'none',   {})
call <sid>hi('markdownHeadingDelimiter',  s:cdBrightBlue, {}, 'none',   {})
call <sid>hi('markdownItalic',            s:cdLightBlue,  {}, 'italic', {})
call <sid>hi('markdownItalicDelimiter',   s:cdLightBlue,  {}, 'italic', {})
call <sid>hi('markdownBold',              s:cdBlue,       {}, 'bold',   {})
call <sid>hi('markdownBoldDelimiter',     s:cdBlue,       {}, 'none',{})
call <sid>hi('markdownListMarker',        s:cdBrightBlue, {}, 'none',   {})
call <sid>hi('markdownCode',              s:cdOrange,     {}, 'none',   {})
call <sid>hi('markdownCodeDelimiter',     s:cdOrange,     {}, 'none',   {})
call <sid>hi('markdownUrl',               s:cdOrange,     {}, 'none',   {})
call <sid>hi('markdownLinkText',          s:cdLightBlue,  {}, 'none',   {})
call <sid>hi('markdownLinkTextDelimiter', s:cdGray,       {}, 'none',   {})
call <sid>hi('markdownLinkDelimiter',     s:cdGray,       {}, 'none',   {})
call <sid>hi('markdownBlockquote',        s:cdGreen,      {}, 'none',   {})

" Tmux:
call <sid>hi('tmuxSpecialCmds',        s:cdBlue,      {}, 'none', {})
call <sid>hi('tmuxOptions',            s:cdPink,      {}, 'none', {})
call <sid>hi('tmuxOptsSet',            s:cdLightBlue, {}, 'none', {})
call <sid>hi('tmuxOptsSetw',           s:cdLightBlue, {}, 'none', {})
call <sid>hi('tmuxOptionValue',        s:cdBlueGreen, {}, 'none', {})
call <sid>hi('tmuxDateInpol',          s:cdFront,     {}, 'none', {})
call <sid>hi('tmuxAttrSeparator',      s:cdGray,      {}, 'none', {})
call <sid>hi('tmuxAttrEquals',         s:cdFront,     {}, 'none', {})
call <sid>hi('tmuxAttrBgFg',           s:cdFront,     {}, 'none', {})
call <sid>hi('tmuxStringDelimiter',    s:cdOrange,    {}, 'none', {})
call <sid>hi('tmuxFmtAlias',           s:cdFront,     {}, 'none', {})
call <sid>hi('tmuxFmtConditional',     s:cdPink,      {}, 'none', {})
call <sid>hi('tmuxAttrInpolDelimiter', s:cdGray,      {}, 'none', {})
call <sid>hi('tmuxFmtInpolDelimiter',  s:cdGray,      {}, 'none', {})
call <sid>hi('tmuxKeySymbol',          s:cdFront,     {}, 'none', {})
call <sid>hi('tmuxWindowPaneCmds',     s:cdYellow,    {}, 'none', {})

" Lua:
" (tbastos/vim-lua)
" call <sid>hi('luaFunc', s:, {}, 'none', {})
" call <sid>hi('luaComma', s:, {}, 'none', {})
" call <sid>hi('luaFuncParens', s:, {}, 'none', {})
" call <sid>hi('luaSymbolOperator', s:, {}, 'none', {})
call <sid>hi('luaBraces',      s:cdFront, {}, 'none', {})
call <sid>hi('luaFuncName',    s:cdYellow, {}, 'none', {})
call <sid>hi('luaString',      s:cdOrange, {}, 'none', {})
call <sid>hi('luaFuncKeyword', s:cdPink, {}, 'none', {})
" call <sid>hi('luaTable', s:, {}, 'none', {})
" call <sid>hi('luaFuncSig', s:, {}, 'none', {})
call <sid>hi('luaFuncArg',     s:cdLightBlue, {}, 'none', {})
call <sid>hi('luaFuncArgName', s:cdLightBlue, {}, 'none', {})


" Sh:
call <sid>hi('shFunction',          s:cdYellow,       {}, 'none', {})
call <sid>hi('shFunctionKey',       s:cdPink,         {}, 'none', {})
call <sid>hi('shFunctionTwo',       s:cdFront,        {}, 'none', {})
call <sid>hi('shFunctionStatement', s:cdPink,         {}, 'none', {})
call <sid>hi('shEscape',            s:cdYellowOrange, {}, 'none', {})
call <sid>hi('shCommandSub',        s:cdFront,        {}, 'none', {})
call <sid>hi('shDoubleQuote',       s:cdOrange,       {}, 'none', {})
call <sid>hi('shOption',            s:cdFront,        {}, 'none', {})
call <sid>hi('shStatement',         s:cdBlue,         {}, 'none', {})
call <sid>hi('shOperator',          s:cdBack,         {}, 'none', {})
call <sid>hi('shDerefSimple',       s:cdLightBlue,    {}, 'none', {})
call <sid>hi('shCtrlSeq',           s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('shQuote',             s:cdOrange,       {}, 'none', {})

" Snippet:
" (SirVer/ultisnips)
" call <sid>hi('snipSnippet', s:cdDarkGray, {}, 'none', {})
call <sid>hi('snipTabStop',              s:cdBlue, {}, 'none',  {})
call <sid>hi('snipSnippetBody',          s:cdFront, {}, 'none', {})
" call <sid>hi('snipSnippetHeader',        s:cdDarkGray, {}, 'none', {})
" call <sid>hi('snipSnippetFooter',        s:cdDarkGray, {}, 'none', {})
call <sid>hi('snipSnippetHeaderKeyword', s:cdGray, {}, 'none', {})
call <sid>hi('snipSnippetFooterKeyword', s:cdGray, {}, 'none', {})
" call <sid>hi('snipSnippetOptions',       s:, {}, 'none', {})
call <sid>hi('snipSnippetOptionFlag',    s:cdPink, {}, 'none', {})
call <sid>hi('snipEscape',               s:cdYellowOrange, {}, 'none', {})
call <sid>hi('snipLeadingSpaces',        s:cdBack, {}, 'none', {})

" Vimwiki:
call <sid>hi('VimwikiHeaderChar', s:cdPink, {}, 'none', {})
call <sid>hi('VimwikiHeader1',   s:cdBlue, {}, 'none', {})
call <sid>hi('VimwikiHeader2',   s:cdBlue, {}, 'none', {})
call <sid>hi('VimwikiHeader3',   s:cdBlue, {}, 'none', {})
call <sid>hi('VimwikiHeader4',   s:cdBlue, {}, 'none', {})
call <sid>hi('VimwikiHeader5',   s:cdBlue, {}, 'none', {})
call <sid>hi('VimwikiHeader6',   s:cdBlue, {}, 'none', {})
call <sid>hi('VimwikiListTodo',  s:cdBlue, {}, 'none', {})
call <sid>hi('VimwikiH1Folding', s:cdFront, {}, 'none', {})
" call <sid>hi('Vimwiki', s:, {}, 'none', {})

" Org:
" (jceb/vim-orgmode)
call <sid>hi('hyperlink',       s:cdLightBlue,        {}, 'none', {})
call <sid>hi('org_title',       s:cdBlueGreen,        {}, 'none', {})
call <sid>hi('org_heading1',    s:cdPink,             {}, 'none', {})
call <sid>hi('org_heading2',    s:cdBrightBlue,       {}, 'none', {})
call <sid>hi('org_heading3',    s:cdGreen,            {}, 'none', {})
call <sid>hi('org_heading4',    s:cdYellowOrange,     {}, 'none', {})
call <sid>hi('org_heading5',    s:cdLightRed,         {}, 'none', {})
call <sid>hi('org_shade_stars', s:cdBrightBlack,      {}, 'none', {})
call <sid>hi('org_list_item', s:cdBrightBlue,         {}, 'none', {})
call <sid>hi('org_list_unordered', s:cdBrightBlue,    {}, 'none', {})
call <sid>hi('org_list_ckeckbox', s:cdBrightBlue,     {}, 'none', {})
call <sid>hi('org_todo_keyword_done', s:cdBrightBlue, {}, 'none', {})
" call <sid>hi('', s:, {}, 'none', {})

" Startify:
call <sid>hi('StartifyFile',    s:cdBlueGreen,  {}, 'none', {})
call <sid>hi('StartifyBracket', s:cdBackGround, {}, 'none', {})
call <sid>hi('StartifyNumber',  s:cdLightGreen, {}, 'none', {})
call <sid>hi('StartifyVar',     s:cdLightGreen, {}, 'none', {})
call <sid>hi('StartifySpecial', s:cdLightGreen, {}, 'none', {})
" call <sid>hi('StartifySelect',  s:,  {}, 'none', {})
call <sid>hi('StartifySlash',   s:cdDarkGray,   {}, 'none', {})
call <sid>hi('StartifyPath',    s:cdDarkGray,   {}, 'none', {})
call <sid>hi('StartifyHeader',  s:cdBlue,  {}, 'none', {})
call <sid>hi('StartifySection', s:cdPink,  {}, 'none', {})

" Unite:
call <sid>hi('uniteStatusNormal',           s:cdFront,        {}, 'none', {})
call <sid>hi('uniteStatusSourceNames',      s:cdBlueGreen,    {}, 'none', {})
call <sid>hi('uniteStatusMessage',          s:cdGreen,        {}, 'none', {})
call <sid>hi('uniteStatusSourceCandidates', s:cdYellow,       {}, 'none', {})
call <sid>hi('uniteStatusHead',             s:cdYellowOrange, {}, 'none', {})
call <sid>hi('uniteStatusLineNR',           s:cdDarkGray,     {}, 'none', {})

" Denite:
call <sid>hi('deniteMatchedChar',   s:cdGreen, {}, 'none', {})
" call <sid>hi('deniteMatchedRange', s:, {}, 'none', {})
" call <sid>hi('deniteStatusLinePath', s:, {}, 'none', {})
" call <sid>hi('deniteStatusLineNumber', s:, {}, 'none', {})
" call <sid>hi('deniteSelectedLine', s:, {}, 'none', {})
" call <sid>hi('deniteSourceLine_', s:, {}, 'none', {})
call <sid>hi('deniteConcealedMark', s:cdDarkBlue, {}, 'none', {})
" call <sid>hi('denite', s:, {}, 'none', {})

" Swoop:
" call <sid>hi('SwoopBufferLineHi', s:, {}, 'none', {})
" call <sid>hi('SwoopPatternHi', s:, {}, 'none', {})

" Sneak:
" call <sid>hi('Sneak',      s:cdBack, s:cdDarkGray, 'none', {})
" call <sid>hi('SneakScope', s:cdBack, s:cdDarkGray, 'none', {})
" call <sid>hi('SneakLabel', s:cdBack, s:cdBlueGreen, 'none', {})

" LeaderGuide:
call <sid>hi('LeaderGuideKeys',     s:cdBlueGreen, {}, 'none', {})
call <sid>hi('LeaderGuideBrackets', s:cdDarkGray,  {}, 'none', {})
call <sid>hi('LeaderGuideDesc',     s:cdBlue,      {}, 'none', {})

" Bookmarks:
call <sid>hi('BookmarkSign',   s:cdBlueGreen, {}, 'none', {})
" call <sid>hi('BookmarkAnnotationSign', s:cdBlue, {}, 'none', {})
" call <sid>hi('BookmarkLine', s:cdBlue, {}, 'none', {})
" call <sid>hi('BookmarkAnnotationLine', s:cdBlue, {}, 'none', {})

" GitGutter:
call <sid>hi('GitGutterAdd',          s:cdGreen,        s:cdBrightBlack, 'none', {})
call <sid>hi('GitGutterChange',       s:cdYellowOrange, s:cdBrightBlack, 'none', {})
call <sid>hi('GitGutterDelete',       s:cdLightRed,     s:cdBrightBlack, 'none', {})
call <sid>hi('GitGutterChangeDelete', s:cdYellowOrange, s:cdBrightBlack, 'none', {})
" call <sid>hi('GitGutterAddLine', s:, {}, 'none', {})
" call <sid>hi('GitGutterChangeLine', s:, {}, 'none', {})
" call <sid>hi('GitGutterDeleteLine', s:, {}, 'none', {})
" call <sid>hi('GitGutterChangeDeleteLine', s:, {}, 'none', {})

"Ale:
call <sid>hi('ALEError', {}, {}, 'none', {})
" call <sid>hi('ALEErrorLine', s:, {}, 'none', {})
call <sid>hi('ALEErrorSign', s:cdLightRed, s:cdBrightBlack, 'none', {})
" call <sid>hi('ALEInfo', s:, {}, 'none', {})
" call <sid>hi('ALEInfoSign', s:, {}, 'none', {})
" call <sid>hi('ALEInfoLine', s:, {}, 'none', {})
call <sid>hi('ALEStyleError', s:cdLightRed, {}, 'none', {})
" call <sid>hi('ALEStyleErrorSign', s:, {}, 'none', {})
" call <sid>hi('ALEStyleWarning', s:, {}, 'none', {})
call <sid>hi('ALEStyleWarningSign', s:cdFront, s:cdBrightBlack, 'none', {})
" call <sid>hi('ALEWarning', s:, {}, 'none', {})
" call <sid>hi('ALEWarningLine', s:, {}, 'none', {})
call <sid>hi('ALEWarningSign', s:cdFront, s:cdBrightBlack, 'none', {})

" Cheat40:
" call <sid>hi('Cheat40Descr',        {}, {}, 'none', {})
call <sid>hi('Cheat40Command',      s:cdLightBlue, {}, 'none', {})
call <sid>hi('Cheat40Header',       s:cdBrightBlue, {}, 'none', {})
call <sid>hi('Cheat40Divider',      s:cdBrightBlue, {}, 'none', {})
" call <sid>hi('Cheat40About',        {}, {}, 'none', {})
call <sid>hi('Cheat40FirstLine',    s:cdPink, {}, 'none', {})
" call <sid>hi('Cheat40BeginSection', {}, {}, 'none', {})
" call <sid>hi('Cheat40EndSection',   {}, {}, 'none', {})
call <sid>hi('Cheat40Tag',          s:cdGreen, {}, 'none', {})
call <sid>hi('Cheat40Backtick',     s:cdGreen, {}, 'none', {})
call <sid>hi('Cheat40Mode',         s:cdBlueGreen, {}, 'none', {})
call <sid>hi('Cheat40Angle',        s:cdGreen, {}, 'none', {})
call <sid>hi('Cheat40DblAngle',     s:cdYellowOrange, {}, 'none', {})
call <sid>hi('Cheat40Comment',      s:cdBrightBlue, {}, 'none', {})
" call <sid>hi('Cheat40Hash',         s:cdFront, {}, 'none', {})
" call <sid>hi('Cheat40Runtime',      {}, {}, 'none', {})
