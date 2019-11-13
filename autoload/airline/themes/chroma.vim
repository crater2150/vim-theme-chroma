let s:gcolors = {
      \ 'blue':        '#00afff',
      \ 'lightblue':   '#87afff',
      \ 'orange':      '#ffaf5f',
      \ 'yellow':      '#ffd75f',
      \ 'green':       '#87d75f',
      \ 'red':         '#ff0000',
      \ 'lightred':    '#ff5f5f',
      \ 'white':       '#ffffff',
      \ 'lightgray':   '#c6c6c6',
      \ 'gray':        '#8a8a8a',
      \ 'bggray':      '#1c1c1c',
      \ 'lightbggray': '#262626',
      \ 'visualgray':  '#303030',
      \ 'black':       '#000000',
      \ 'normfg':      '#ffffff',
      \ 'normbg':      '#000000',
      \ 'fg':          'fg',
      \ 'bg':          'bg',
      \ 'NONE':        'NONE',
      \ '':            ''
      \}

let s:tcolors = {
      \ 'blue':         39,
      \ 'lightblue':   111,
      \ 'orange':      215,
      \ 'yellow':      221,
      \ 'green':       113,
      \ 'red':         196,
      \ 'lightred':    203,
      \ 'white':       255,
      \ 'lightgray':   251,
      \ 'gray':        244,
      \ 'bggray':      234,
      \ 'lightbggray': 235,
      \ 'visualgray':  236,
      \ 'black':       232,
      \ 'normfg':      255,
      \ 'normbg':      232,
      \ 'fg':          'fg',
      \ 'bg':          'bg',
      \ 'NONE':        'NONE',
      \ '':            ''
      \}

function! FgBg(fg, bg, ...)
  let opts = get(a:, 2, 0)
  if opts
    return [ s:gcolors[a:fg], s:gcolors[a:bg], s:tcolors[a:fg], s:tcolors[a:bg], opts]
  else
    return [ s:gcolors[a:fg], s:gcolors[a:bg], s:tcolors[a:fg], s:tcolors[a:bg]]
  endif
endfunction

scriptencoding utf-8

let g:airline#themes#chroma#palette = {}

let s:airline_a_normal   = FgBg('black', 'lightblue')
let s:airline_b_normal   = FgBg('black', 'blue')
let s:airline_c_normal   = FgBg('gray', 'bggray') "[ '#9cffd3' , '#202020' , 85  , 234 ]
let g:airline#themes#chroma#palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)

let g:airline#themes#chroma#palette.normal_modified = {
      \ 'airline_c': FgBg('yellow', 'bggray', 'italic'),
      \ }


let s:airline_a_insert = FgBg('white', 'bggray')
let s:airline_b_insert = FgBg('white', 'visualgray')
let s:airline_c_insert = s:airline_c_normal
let g:airline#themes#chroma#palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)
let g:airline#themes#chroma#palette.insert_modified = g:airline#themes#chroma#palette.normal_modified
let g:airline#themes#chroma#palette.insert_paste = {
      \ 'airline_a': FgBg('orange', 'bggray')
      \ }


let g:airline#themes#chroma#palette.replace = copy(g:airline#themes#chroma#palette.insert)
let g:airline#themes#chroma#palette.replace.airline_a = FgBg('black','red')
let g:airline#themes#chroma#palette.replace_modified = g:airline#themes#chroma#palette.normal_modified


let s:airline_a_visual = FgBg('black', 'yellow')
let s:airline_b_visual = FgBg('black', 'orange')
let s:airline_c_visual = s:airline_c_normal
let g:airline#themes#chroma#palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b_visual, s:airline_c_visual)
let g:airline#themes#chroma#palette.visual_modified = g:airline#themes#chroma#palette.normal_modified


let s:airline_a_inactive = FgBg('gray','visualgray')
let s:airline_b_inactive = FgBg('gray','visualgray')
let s:airline_c_inactive = FgBg('gray','visualgray')
let g:airline#themes#chroma#palette.inactive = airline#themes#generate_color_map(s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive)
let g:airline#themes#chroma#palette.inactive_modified = {
      \ 'airline_c': FgBg('yellow', 'visualgray', 'italic'),
      \ }


" For commandline mode, we use the colors from normal mode, except the mode
" indicator should be colored differently, e.g. light green
let s:airline_a_commandline = FgBg('black','green')
let s:airline_b_commandline = FgBg('green','gray')
let s:airline_c_commandline = s:airline_c_normal
let g:airline#themes#chroma#palette.commandline = airline#themes#generate_color_map(s:airline_a_commandline, s:airline_b_commandline, s:airline_c_commandline)

" Accents are used to give parts within a section a slightly different look or
" color. Here we are defining a "red" accent, which is used by the 'readonly'
" part by default. Only the foreground colors are specified, so the background
" colors are automatically extracted from the underlying section colors. What
" this means is that regardless of which section the part is defined in, it
" will be red instead of the section's foreground color. You can also have
" multiple parts with accents within a section.
let g:airline#themes#chroma#palette.accents = {
      \ 'red': FgBg('red','')
      \ }

