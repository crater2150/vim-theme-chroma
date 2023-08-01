-- You probably always want to set this in your vim file
vim.opt.background = 'dark'
vim.g.colors_name = 'chroma'
package.loaded['chroma-theme'] = nil
require('lush')(require('chroma-theme'))
