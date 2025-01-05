--[[
    Gitsigns.nvim integration for Guttenbergovitz theme
    Provides custom highlighting for git status indicators
--]]

local M = {}

function M.setup()
    local colors = require("guttenbergovitz.colors").get()
    
    vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = colors.green })
    vim.api.nvim_set_hl(0, "GitSignsChange", { fg = colors.yellow })
    vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = colors.red })
end

return M