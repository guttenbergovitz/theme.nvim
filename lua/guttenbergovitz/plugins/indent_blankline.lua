--[[
    Indent-blankline integration for Guttenbergovitz theme
    Provides custom highlighting for indentation guides
--]]

local M = {}

function M.setup()
    local colors = require("guttenbergovitz.colors").get()
    
    -- Keeping it subtle and minimal
    vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = colors.indent_normal })
    vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { fg = colors.indent_active })
    vim.api.nvim_set_hl(0, "IndentBlanklineContextStart", { sp = colors.indent_active, underline = true })
end

return M 