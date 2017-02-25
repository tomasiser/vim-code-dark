" Vim Code Dark (airline theme)
" https://github.com/tomasiser/vim-code-dark

scriptencoding utf-8

let g:airline#themes#codedark#palette = {}

let s:cdFront = {'gui': '#FFFFFF', 'cterm': '00'}
let s:cdFrontGray = {'gui': '#D4D4D4', 'cterm': '00'}
let s:cdBack = {'gui': '#1E1E1E', 'cterm': '00'}
let s:cdSelection = {'gui': '#264F78', 'cterm': '00'}

let s:cdPurple = {'gui': '#682279', 'cterm': '00'}
let s:cdBlue = {'gui': '#0A7ACA', 'cterm': '00'}
let s:cdLightBlue = {'gui': '#5cb6f8', 'cterm': '00'}
let s:cdDarkBlue = {'gui': '#11639B', 'cterm': '00'}
let s:cdOrange = {'gui': '#CE9178', 'cterm': '00'}
let s:cdYellow = {'gui': '#FFAF00', 'cterm': '00'}
let s:cdRed = {'gui': '#F44747', 'cterm': '00'}

let s:cdDarkDarkDark = {'gui': '#262626', 'cterm': '00'}
let s:cdDarkDark = {'gui': '#303030', 'cterm': '00'}
let s:cdDark = {'gui': '#3C3C3C', 'cterm': '00'}

let s:Warning = [ s:cdRed.gui, s:cdDarkDark.gui, s:cdFront.cterm, s:cdDarkDarkDark.cterm, 'none']

" Normal:

let s:N1 = [ s:cdFront.gui, s:cdBlue.gui, s:cdFront.cterm, s:cdBlue.cterm, 'none' ]
let s:N2 = [ s:cdFront.gui, s:cdDarkDark.gui, s:cdFront.cterm, s:cdDarkDark.cterm, 'none' ]
let s:N3 = [ s:cdFront.gui, s:cdDarkDarkDark.gui, s:cdFront.cterm, s:cdDarkDarkDark.cterm, 'none' ]
let s:NM = [ s:cdFront.gui, s:cdDarkDarkDark.gui, s:cdFront.cterm, s:cdDarkDarkDark.cterm, 'none']

let g:airline#themes#codedark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#codedark#palette.normal_modified = { 'airline_c': s:NM }
let g:airline#themes#codedark#palette.normal.airline_warning = s:Warning
let g:airline#themes#codedark#palette.normal_modified.airline_warning = s:Warning

" Insert:

let s:I1 = [ s:cdBack.gui, s:cdYellow.gui, s:cdBack.cterm, s:cdYellow.cterm, 'none' ]
let s:I2 = [ s:cdFront.gui, s:cdDarkDark.gui, s:cdFront.cterm, s:cdDarkDark.cterm, 'none' ]
let s:I3 = [ s:cdFront.gui, s:cdDarkDarkDark.gui, s:cdFront.cterm, s:cdDarkDarkDark.cterm, 'none' ]
let s:IM = [ s:cdFront.gui, s:cdDarkDarkDark.gui, s:cdFront.cterm, s:cdDarkDarkDark.cterm, 'none']

let g:airline#themes#codedark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#codedark#palette.insert_modified = { 'airline_c': s:IM }
let g:airline#themes#codedark#palette.insert.airline_warning = s:Warning
let g:airline#themes#codedark#palette.insert_modified.airline_warning = s:Warning

" Replace:

let s:R1 = [ s:cdBack.gui, s:cdYellow.gui, s:cdBack.cterm, s:cdYellow.cterm, 'none' ]
let s:R2 = [ s:cdFront.gui, s:cdDarkDark.gui, s:cdFront.cterm, s:cdDarkDark.cterm, 'none' ]
let s:R3 = [ s:cdFront.gui, s:cdDarkDarkDark.gui, s:cdFront.cterm, s:cdDarkDarkDark.cterm, 'none' ]
let s:RM = [ s:cdFront.gui, s:cdDarkDarkDark.gui, s:cdFront.cterm, s:cdDarkDarkDark.cterm, 'none']

let g:airline#themes#codedark#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#codedark#palette.replace_modified = { 'airline_c': s:RM }
let g:airline#themes#codedark#palette.replace.airline_warning = s:Warning
let g:airline#themes#codedark#palette.replace_modified.airline_warning = s:Warning

" Visual:

let s:V1 = [ s:cdLightBlue.gui, s:cdDark.gui, s:cdFront.cterm, s:cdPurple.cterm, 'none' ]
let s:V2 = [ s:cdFront.gui, s:cdDarkDark.gui, s:cdFront.cterm, s:cdDarkDark.cterm, 'none' ]
let s:V3 = [ s:cdFront.gui, s:cdDarkDarkDark.gui, s:cdFront.cterm, s:cdDarkDarkDark.cterm, 'none' ]
let s:VM = [ s:cdFront.gui, s:cdDarkDarkDark.gui, s:cdFront.cterm, s:cdDarkDarkDark.cterm, 'none']

let g:airline#themes#codedark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#codedark#palette.visual_modified = { 'airline_c': s:VM }
let g:airline#themes#codedark#palette.visual.airline_warning = s:Warning
let g:airline#themes#codedark#palette.visual_modified.airline_warning = s:Warning

" Inactive:

let s:IA1 = [ s:cdFrontGray.gui, s:cdDark.gui, s:cdFrontGray.cterm, s:cdDark.cterm, 'none' ]
let s:IA2 = [ s:cdFrontGray.gui, s:cdDarkDark.gui, s:cdFrontGray.cterm, s:cdDarkDark.cterm, 'none' ]
let s:IA3 = [ s:cdFrontGray.gui, s:cdDarkDarkDark.gui, s:cdFrontGray.cterm, s:cdDarkDarkDark.cterm, 'none' ]
let s:IAM = [ s:cdFrontGray.gui, s:cdDarkDarkDark.gui, s:cdFrontGray.cterm, s:cdDarkDarkDark.cterm, 'none' ]

let g:airline#themes#codedark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#codedark#palette.inactive_modified = { 'airline_c': s:IAM }

" Red accent for readonly:

let g:airline#themes#codedark#palette.accents = {
      \ 'red': [ s:cdRed.gui, '', s:cdRed.cterm, '' ]
      \ }

