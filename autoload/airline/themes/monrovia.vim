let g:airline#themes#monrovia#palette = {}

let g:airline#themes#monrovia#palette.accents = {
      \ 'red': [ '#60A165' , '' , 81 , '' , '' ],
      \ }

" Normal Mode:
let s:N1 = [ '#8C3432' , '#EEEADF' , 240 , 254 ] " Mode
let s:N2 = [ '#EEEADF' , '#9E7156' , 254 , 31  ] " Info
let s:N3 = [ '#D3CBAF' , '#232839' , 255 , 24  ] " StatusLine

let g:airline#themes#monrovia#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#monrovia#palette.normal_modified = {
      \ 'airline_c': [ '#eeeeee' , '#232839' , 255 , 24 , '' ] ,
      \ }

" Insert Mode:
let s:I1 = [ '#8C3432' , '#EEEADF' , 240 , 254 ] " Mode
let s:I2 = [ '#EEEADF' , '#9E7156' , 254 , 31  ] " Info
let s:I3 = [ '#D3CBAF' , '#232839' , 255 , 24  ] " StatusLine

let g:airline#themes#monrovia#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#monrovia#palette.insert_modified = {
      \ 'airline_c': [ '#eeeeee' , '#232839' , 255 , 24 , '' ] ,
      \ }

" Replace Mode:
let g:airline#themes#monrovia#palette.replace = copy(g:airline#themes#monrovia#palette.insert)
let g:airline#themes#monrovia#palette.replace.airline_a = [ '#EEEADF', '#60A195' , 161 , 254, '' ]
let g:airline#themes#monrovia#palette.replace_modified = {
      \ 'airline_c': [ '#eeeeee' , '#232839' , 255 , 24 , '' ] ,
      \ }

" Visual Mode:
let s:V1 = [ '#EEEADF', '#8C3432', 24,  254 ]
let s:V2 = [ '',        '#9E7156', '',  31  ]
let s:V3 = [ '#EEEADF', '#232839', 254, 24  ]

let g:airline#themes#monrovia#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#monrovia#palette.visual_modified = {
      \ 'airline_c': [ '#EEEADF', '#005f87', 254, 24  ] ,
      \ }

" Inactive:
let s:IA = [ '#585858' , '#EEEADF' , 240 , 254 , '' ]
let g:airline#themes#monrovia#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#monrovia#palette.inactive_modified = {
      \ 'airline_c': [ '#585858' , '#EEEADF' , 240 , 254 , '' ] ,
      \ }


" CtrlP:
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#monrovia#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#EEEADF' , '#232839' , 254 , 24  , ''     ] ,
      \ [ '#EEEADF' , '#9E7156' , 254 , 31  , ''     ] ,
      \ [ '#585858' , '#EEEADF' , 240 , 254 , 'bold' ] )
