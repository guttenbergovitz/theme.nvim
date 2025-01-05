--[[
    Color palette for Guttenbergovitz theme
    Inspired by traditional printing and jazz aesthetics
    Following the "less is more" philosophy
--]]

local M = {}

-- Base colors from the original VSCode theme
M.colors = {
    -- Core UI colors
    bg = "#232326",
    bg_dark = "#1d1d20",
    fg = "#d4be98",
    fg_dark = "#7c7c7c",
    
    -- Minimal syntax colors
    keyword = "#a96b69",
    func = "#d79969",
    string = "#89a87d",
    type = "#d6b986",
    red = "#a96b69",
    yellow = "#d6b986",
    green = "#89a87d",
    border = "#3a3a3d",
}

function M.setup()
    local hl = {
        -- Editor
        Normal = { fg = M.colors.fg, bg = M.colors.bg },
        NormalFloat = { fg = M.colors.fg, bg = M.colors.bg_dark },
        SignColumn = { bg = M.colors.bg },
        LineNr = { fg = M.colors.fg_dark },
        CursorLineNr = { fg = M.colors.fg },
        
        -- Syntax
        Keyword = { fg = M.colors.keyword },
        Function = { fg = M.colors.func },
        String = { fg = M.colors.string },
        Type = { fg = M.colors.type },
        Identifier = { fg = M.colors.fg },
        Comment = { fg = M.colors.fg_dark, italic = true },
        
        -- UI Elements
        StatusLine = { fg = M.colors.fg, bg = M.colors.bg_dark },
        StatusLineNC = { fg = M.colors.fg_dark, bg = M.colors.bg_dark },
        VertSplit = { fg = M.colors.bg_dark },
    }
    
    -- Apply highlights
    for group, opts in pairs(hl) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

function M.get()
    return M.colors
end

return M