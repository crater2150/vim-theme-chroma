# vim-theme-chroma

A vim theme for GUI and 256-color terminal with vivid colors. Dark and light background version included.

As I don't like underlined text, by default this theme uses italics for the
`Underline` highlight group. You can change this by setting the
`g:chroma_underline_style` variable *before setting the color theme*:

```vim
let g:chroma_underline_style = "underline"
" or
let g:chroma_underline_style = "bold"
" see :help attr-list for possible values
```

If you want to enable underlining just when editing certain filetypes, remember to also reload the colortheme on every change of the variable.

See http://vimcolors.com/597/chroma for preview.

See [chroma-colors](https://github.com/crater2150/chroma-colors) for this color scheme for other applications
