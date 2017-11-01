highlight Normal ctermbg=black
highlight Directory ctermbg=black
highlight EndOfBuffer ctermbg=black
highlight ErrorMsg ctermbg=black
highlight VertSplit ctermbg=black
highlight Folded ctermbg=black
highlight FoldColumn ctermbg=black
highlight LineNr ctermbg=black
highlight CursorLineNr ctermbg=black
highlight NonText ctermbg=black
highlight Question ctermbg=black
highlight WarningMsg ctermbg=black
highlight TabLineSel ctermfg=black ctermbg=white
highlight TabLineFill ctermbg=black
highlight TabLine ctermbg=black
highlight Search ctermfg=black ctermbg=yellow
highlight VertSplit ctermfg=white ctermbg=232
highlight Conceal ctermfg=white ctermbg=233

set fillchars+=vert:\ 

let g:airline#themes#purplecones#palette = {}

let s:N1   = [ '#00005f' , '#dfff00' , 17, 190 ]
let s:N2   = [ '#ffffff' , '#444444' , 15 , 233 ]
let g:airline#themes#purplecones#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N2)


let g:airline#themes#purplecones#palette.normal_modified = {
  \ 'airline_b': [ '#ffffff' , '#5f005f' , 15 , 88     , ''     ] ,
\ }

let s:I1 = [ '#00005f' , '#00dfff' , 17  , 45  ]
let s:I2 = [ '#ffffff' , '#005fff' , 255 , 27  ]
let g:airline#themes#purplecones#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I2)
let g:airline#themes#purplecones#palette.insert_modified = {
  \ 'airline_b': [ '#ffffff' , '#5f005f' , 15    , 88      , ''     ] ,
\ }
let g:airline#themes#purplecones#palette.insert_paste = {
  \ 'airline_a': [ s:I1[0]   , '#d78700' , s:I1[2] , 172     , ''     ] ,
\ }

let g:airline#themes#purplecones#palette.replace = copy(g:airline#themes#purplecones#palette.insert)
let g:airline#themes#purplecones#palette.replace.airline_a = [ s:I2[0]   , '#af0000' , s:I2[2] , 124     , ''     ]
let g:airline#themes#purplecones#palette.replace_modified = g:airline#themes#purplecones#palette.insert_modified

let s:V1 = [ '#000000' , '#ffaf00' , 232 , 214 ]
let s:V2 = [ '#000000' , '#ff5f00' , 232 , 202 ]
let g:airline#themes#purplecones#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V2)
let g:airline#themes#purplecones#palette.visual_modified = {
  \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
\ }

let s:IA1 = [ '#4e4e4e' , '#1c1c1c' , 245 , 232 , '' ]
let s:IA2 = [ '#4e4e4e' , '#262626' , 245 , 232 , '' ]
let g:airline#themes#purplecones#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA2)
let g:airline#themes#purplecones#palette.inactive_modified = {
  \ 'airline_c': [ '#875faf' , '' , 52 , '' , '' ] ,
\ }

let g:airline#themes#purplecones#palette.accents = {
  \ 'red': [ '#ff0000' , '' , 160 , ''  ]
\ }

if get(g:, 'loaded_ctrlp', 0)
  let g:airline#themes#purplecones#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
    \ [ '#d7d7ff' , '#5f00af' , 189 , 55  , ''     ],
    \ [ '#ffffff' , '#875fd7' , 231 , 98  , ''     ],
    \ [ '#5f00af' , '#ffffff' , 55  , 231 , 'bold' ])
endif

let g:airline_theme = 'purplecones'

