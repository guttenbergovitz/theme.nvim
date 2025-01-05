--[[
    Color palette for Guttenbergovitz theme
    Inspired by traditional printing and jazz aesthetics
    Following the "less is more" philosophy
--]]

local M = {}

-- Base colors from the original palette
M.colors = {
    -- Core colors
    bg = "#232326",
    bg_dark = "#1d1d20",
    bg_highlight = "#2a2a2d",
    bg_selection = "#3a3a3d",
    fg = "#d4be98",
    fg_dark = "#7c7c7c",
    
    -- Syntax colors (minimalist set)
    red = "#a96b69",      -- keywords, operators
    orange = "#d79969",   -- functions
    yellow = "#d6b986",   -- types, constants
    green = "#89a87d",    -- strings
    text = "#d4be98",     -- variables, text
    comment = "#7c7c7c",  -- comments
    
    -- UI elements
    border = "#3a3a3d",
    line_nr = "#7c7c7c",
    line_nr_active = "#d4be98",
    indent_normal = "#2a2a2d",
    indent_active = "#3a3a3d",
}

function M.setup()
    -- Core editor highlights
    local highlights = {
        -- Editor
        Normal = { fg = M.colors.fg, bg = M.colors.bg },
        NormalFloat = { fg = M.colors.fg, bg = M.colors.bg_dark },
        SignColumn = { fg = M.colors.fg, bg = M.colors.bg },
        EndOfBuffer = { fg = M.colors.bg },
        NormalNC = { fg = M.colors.fg, bg = M.colors.bg },
        
        -- Line highlighting
        CursorLine = { bg = M.colors.bg_highlight },
        CursorLineNr = { fg = M.colors.line_nr_active },
        LineNr = { fg = M.colors.line_nr },
        
        -- Selection
        Visual = { bg = M.colors.bg_selection },
        VisualNOS = { bg = M.colors.bg_selection },
        
        -- Borders and separators
        VertSplit = { fg = M.colors.border },
        FloatBorder = { fg = M.colors.border, bg = M.colors.bg_dark },
        
        -- Search and selection
        Search = { bg = M.colors.bg_selection },
        IncSearch = { bg = M.colors.bg_selection },
        
        -- Syntax
        Keyword = { fg = M.colors.red },
        Statement = { fg = M.colors.red },
        Type = { fg = M.colors.yellow },
        Function = { fg = M.colors.orange },
        String = { fg = M.colors.green },
        Constant = { fg = M.colors.yellow },
        Number = { fg = M.colors.yellow },
        Comment = { fg = M.colors.comment, italic = true },
        Operator = { fg = M.colors.red },
        
        -- Special
        Special = { fg = M.colors.orange },
        SpecialKey = { fg = M.colors.fg_dark },
        
        -- Messages
        ErrorMsg = { fg = M.colors.red },
        WarningMsg = { fg = M.colors.yellow },
        
        -- Git signs (basic)
        DiffAdd = { fg = M.colors.green },
        DiffChange = { fg = M.colors.yellow },
        DiffDelete = { fg = M.colors.red },
    }
    
    -- Apply highlights
    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

-- Expose colors for plugin integrations
function M.get()
    return M.colors
end

return M 