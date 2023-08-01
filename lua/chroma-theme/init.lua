local lush = require("lush")
local hsl = lush.hsl

---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  local base = {
    fg = hsl(0, 0, 90),
    bg = hsl(0, 0, 3),
    darkred = hsl(0, 100, 50),
    orange = hsl(30,100,69),
    lightred = hsl(0,95,69),
    green = hsl(100,70,61),
    yellow = hsl(45,100,69),
    blue = hsl(199, 100, 50),
    faintblue = hsl(220, 100, 76),
    uibg = hsl(0,0,11),
    uifg = hsl(0,0,54),
  }

  return {
    Normal                               { fg=base.fg, bg=base.bg },
    Underlined                           { gui="italic", },
    Error                                { bg=base.darkred.abs_darken(10), fg=base.darkred.abs_darken(10).readable() },
    String                               { fg=base.lightred, },
    Number                               { fg=base.green, },
    Special                              { fg=base.yellow, gui="italic", },
    Function                             { fg=base.orange, },
    SpecialKey                           { fg=base.darkred, },
    Todo                                 { fg=Special.fg, bg=Special.fg.darken(80), },
    MatchParen                           { fg=String.fg, gui="bold", },
    Comment                              { fg=Normal.fg.darken(50), },
    Constant                             { fg=Number.fg.darken(30), },
    Keyword                              { fg=base.blue, gui="bold" },
    Identifier                           { fg=Normal.fg.darken(10), },
    Statement                            { fg=Keyword.fg },
    PreProc                              { fg=Function.fg, },
    Type                                 { fg=base.faintblue, gui="bold", },
    LineNr                               { fg=base.uifg, bg=base.uibg, },
    Visual                               { bg=LineNr.bg.lighten(15), },
    NonText                              { bg=Normal.bg.lighten(10), },

    SignColumn                           { fg=LineNr.fg.lighten(30), bg=LineNr.bg, },
    CursorLine                           { bg=Normal.bg.lighten(20), },
    CursorLineNr                         { CursorLine, fg=Type.fg },
    CursorLineSign                       { SignColumn },
    CursorColumn                         { bg=LineNr.bg, },

    Pmenu                                { fg=Normal.fg, bg=LineNr.bg, },
    PmenuSel                             { fg=Normal.bg, bg=Statement.fg, },
    PmenuSbar                            { bg=LineNr.bg.lighten(15), },
    PmenuThumb                           { bg=PmenuSel.bg.lighten(10) },
    WildMenu                             { fg=Normal.fg, bg=LineNr.bg, },

    DiagnosticError                      { fg=base.darkred, },
    DiagnosticWarn                       { fg=Function.fg.darken(10), },
    DiagnosticInfo                       { fg=Type.fg, },
    DiagnosticHint                       { fg=Normal.fg.darken(10), },
    DiagnosticOk                         { fg=Number.fg.lighten(10), },
    DiagnosticUnderlineError             { sp=DiagnosticError.fg, gui="underline", },
    DiagnosticUnderlineWarn              { sp=DiagnosticWarn.fg, gui="underline", },
    DiagnosticUnderlineInfo              { sp=DiagnosticInfo.fg, gui="underline", },
    DiagnosticUnderlineHint              { sp=DiagnosticHint.fg, gui="underline", },
    DiagnosticUnderlineOk                { sp=DiagnosticOk.fg, gui="underline", },
    DiagnosticDeprecated                 { sp=DiagnosticWarn.fg, gui="strikethrough", },

    Directory                            { fg=Statement.fg, },
    ErrorMsg                             { Error, gui="bold", },
    Search                               { fg=Function.fg.readable(), bg=Function.fg, },
    MoreMsg                              { fg=Statement.fg, gui="bold", },
    Question                             { Number },
    StatusLine                           { fg=Type.fg, bg=LineNr.bg, gui="bold", },
    StatusLineNC                         { fg=Comment.fg, bg=Normal.bg.lighten(3), },
    VertSplit                            { fg=Normal.fg.darken(50), bg=LineNr.bg, },
    Title                                { Function, gui="bold", },
    WarningMsg                           { fg=Error.bg },

    Folded                               { bg=LineNr.bg, gui="italic", fg=Normal.fg.darken(30), },
    FoldColumn                           { Folded, fg=Constant.fg.desaturate(60)},

    DiffAdd                              { fg=base.green, },
    DiffChange                           { fg=base.yellow, },
    DiffDelete                           { fg=base.lightred, gui="bold", },
    DiffText                             { Normal },

    SpellBad                             { sp=DiagnosticError.fg, fg=DiagnosticError.fg, gui="undercurl", },
    SpellCap                             { sp=DiagnosticInfo.fg, fg=DiagnosticInfo.fg, gui="undercurl", },
    SpellRare                            { sp=DiagnosticOk.fg, fg=DiagnosticOk.fg, gui="undercurl", },
    SpellLocal                           { sp=DiagnosticOk.fg, fg=DiagnosticOk.fg, gui="undercurl", },

    TabLine                              { fg=Statement.fg, bg=LineNr.bg, },
    TabLineSel                           { bg=LineNr.bg, gui="italic", fg=Function.fg, },
    TabLineFill                          { Folded },
    ColorColumn                          { bg=CursorColumn.bg.darken(20), },

    -- Treesitter highlights
    sym"@text.reference"    { DiagnosticInfo, gui="underline" },
    sym"@namespace"         { Special },

    -- Filetype specific highlights
    sym"@variable.turtle"   { fg=Type.fg },
  }
end)
return theme
-- vi:nowrap
