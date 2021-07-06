# vim-theme-chroma

A vim theme for GUI and 256-color terminal with vivid colors. Dark and light background version included.

## Customizing
There are some variables to customize the theme. You have to set these *before setting the color theme*.

In previous versions, the `Normal` highlight class had a background set. This allowed to switch between a light and a dark version of the theme by simply setting `'background'` accordingly, but caused problems when syntax files linked highlighting groups to `Normal` (e.g. broken background in `cursorline` and floating windows). If these aren't a concern for you and you want to keep the background switching option, add the following to your vimrc:

```vim
let g:chroma_legacy_normal_bg=1
```


As I don't like underlined text, by default this theme uses italics for the
`Underline` highlight group. You can change this by setting the
`g:chroma_underline_style` variable:

```vim
let g:chroma_underline_style = "underline"
" or
let g:chroma_underline_style = "bold"
" see :help attr-list for possible values
```

For fonts, that do not work well in italic, you may also want to change all other occurrences of italic, e.g.:

```vim
let g:chroma_italic_style = "bold"
```

If you prefer the nontext background (the window background after the last line of the file) to be the same as the main background, use:

```vim
let g:chroma_nontext_dark = 1
```

If you want to set these just when editing certain filetypes, remember to also reload the colortheme on every change of the variables.

See http://vimcolors.com/597/chroma for preview.

See [chroma-colors](https://github.com/crater2150/chroma-colors) for this color scheme for other applications
