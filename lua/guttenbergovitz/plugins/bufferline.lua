--[[
    Bufferline integration for Guttenbergovitz theme
    Provides custom highlighting for buffer/tab line
--]]

local M = {}

function M.setup()
    local colors = require("guttenbergovitz.colors").get()
    
    -- Basic elements
    vim.api.nvim_set_hl(0, "BufferLineBackground", { fg = colors.fg_dark, bg = colors.bg_dark })
    vim.api.nvim_set_hl(0, "BufferLineBuffer", { fg = colors.fg_dark, bg = colors.bg_dark })
    vim.api.nvim_set_hl(0, "BufferLineFill", { fg = colors.fg_dark, bg = colors.bg_dark })
    
    -- Active/Selected buffer
    vim.api.nvim_set_hl(0, "BufferLineBufferSelected", { fg = colors.fg, bg = colors.bg, bold = true })
    vim.api.nvim_set_hl(0, "BufferLineIndicatorSelected", { fg = colors.red, bg = colors.bg })
    
    -- Modified buffers
    vim.api.nvim_set_hl(0, "BufferLineModified", { fg = colors.yellow, bg = colors.bg_dark })
    vim.api.nvim_set_hl(0, "BufferLineModifiedSelected", { fg = colors.yellow, bg = colors.bg })
    
    -- Separators
    vim.api.nvim_set_hl(0, "BufferLineSeparator", { fg = colors.border, bg = colors.bg_dark })
    vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", { fg = colors.border, bg = colors.bg })
    
    -- Diagnostics
    vim.api.nvim_set_hl(0, "BufferLineError", { fg = colors.red, bg = colors.bg_dark })
    vim.api.nvim_set_hl(0, "BufferLineWarning", { fg = colors.yellow, bg = colors.bg_dark })
    vim.api.nvim_set_hl(0, "BufferLineInfo", { fg = colors.green, bg = colors.bg_dark })
end

return M