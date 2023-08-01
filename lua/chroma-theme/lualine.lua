local colors = {
	blue        = '#00afff',
	yellow      = '#ffd75f',
	green       = '#87d75f',
	red         = '#ff0000',
	gray        = '#6a6a6a',
	bggray      = '#1c1c1c',
	lightbggray = '#262626',
	black       = '#000000',
}

return {
	normal = {
		a = { fg = colors.black, bg = colors.gray },
		b = { fg = colors.yellow, bg = colors.lightbggray },
		c = { fg = colors.blue, bg = colors.bggray },
		z = { fg = colors.yellow, bg = colors.gray },
	},
	inactive = {
		a = { fg = colors.black, bg = colors.gray },
		b = { fg = colors.red, bg = colors.lightbggray },
		c = { fg = colors.gray, bg = colors.bggray },
		z = { fg = colors.blue, bg = colors.gray },
	},
	insert = { a = { fg = colors.black, bg = colors.green } },
	visual = { a = { fg = colors.black, bg = colors.yellow } },
	replace = { a = { fg = colors.black, bg = colors.red } },
}
