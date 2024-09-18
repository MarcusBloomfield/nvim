-- MarcusColorScheme.lua

-- Set the name of the color scheme
vim.cmd('hi clear')
vim.cmd('set background=dark') -- or light
vim.g.colors_name = "MarcusColorScheme"

-- Define color palette for terminals
local s = {
    bg           = 231,
    fg           = 77,
    red          = 203,
    green        = 46,
    yellow       = 179,
    blue         = 33,
    magenta      = 170,
    cyan         = 51,
    white        = 231,
    black        = 16,
    orange       = 208,
    violet       = 138,
    purple       = 92,
    pink         = 211,
    lightred     = 167,
    lightgreen   = 114,
    lightyellow  = 187,
    lightblue    = 75,
    lightmagenta = 176,
    lightcyan    = 109,
    darkgrey     = 239,
    lightgrey    = 145,
    aqua         = 121,
    offWhite     = 187
}

-- Function to set color for a highlight group
local function SetColor(group, color)
    vim.cmd('hi ' .. group .. ' ctermfg=' .. color)
end

-- Apply colors to various elements using the SetColor function
local syntax_colors = {
    Normal        = s.white,
    Comment       = s.green,
    Constant      = s.cyan,
    Identifier    = s.fg,
    Statement     = s.orange,
    PreProc       = s.yellow,
    Type          = s.blue,
    Special       = s.blue,
    Underlined    = s.red,
    Error         = s.red,
    Todo          = s.white,
    Conditional   = s.orange,
    Repeat        = s.white,
    Label         = s.red,
    Operator      = s.orange,
    Keyword       = s.blue,
    Exception     = s.red,
    Include       = s.blue,
    Define        = s.white,
    Macro         = s.blue,
    PreCondit     = s.white,
    StorageClass  = s.blue,
    Structure     = s.blue,
    Typedef       = s.red,
    SpecialChar   = s.white,
    SpecialComment = s.white,
    Tag           = s.aqua,
    Delimiter     = s.blue,
    SpecialKey    = s.white,
    NonText       = s.white,
    Title         = s.white,
    Visual        = s.offWhite,
    Search        = s.white,
    Directory     = s.white,
    TabLineFill   = s.white,
    DiffAdd       = s.white,
    DiffChange    = s.white,
    DiffDelete    = s.white,
    DiffText      = s.white,
    WarningMsg    = s.white,
    ErrorMsg      = s.red,
    ModeMsg       = s.white,
    MoreMsg       = s.white,
    MatchParen    = s.white,
    Question      = s.white,
    WildMenu      = s.white,
    FoldColumn    = s.white,
    CursorLineNr  = s.white,
    StatusLine    = s.white,
    StatusLineNC  = s.white,
    VertSplit     = s.white,
    Pmenu         = s.white,
    PmenuSel      = s.white,
    PmenuSbar     = s.white,
    PmenuThumb    = s.white,
    SpellBad      = s.red,
    SpellCap      = s.white,
    SpellLocal    = s.white,
    SpellRare     = s.white
}

-- Loop through the syntax_colors table and set colors for each group
for group, color in pairs(syntax_colors) do
    SetColor(group, color)
end
