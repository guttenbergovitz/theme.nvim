--[[
    Neo-tree integration for Guttenbergovitz theme
    Provides custom highlighting for file explorer
--]]

local M = {}

function M.setup()
    local colors = require("guttenbergovitz.colors").get()
    
    -- Basic elements
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { fg = colors.fg, bg = colors.bg })
    vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { fg = colors.bg, bg = colors.bg })
    vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { fg = colors.bg })
    
    -- Files and folders
    vim.api.nvim_set_hl(0, "NeoTreeFolderName", { fg = colors.fg })
    vim.api.nvim_set_hl(0, "NeoTreeOpenedFolderName", { fg = colors.fg })
    vim.api.nvim_set_hl(0, "NeoTreeEmptyFolderName", { fg = colors.fg_dark })
    vim.api.nvim_set_hl(0, "NeoTreeFileIcon", { fg = colors.fg_dark })
    vim.api.nvim_set_hl(0, "NeoTreeFolderIcon", { fg = colors.fg })
    
    -- Special files
    vim.api.nvim_set_hl(0, "NeoTreeSpecialFile", { fg = colors.type })
    vim.api.nvim_set_hl(0, "NeoTreeSymlink", { fg = colors.type })
    
    -- Git integration - using warmer colors
    vim.api.nvim_set_hl(0, "NeoTreeGitNew", { fg = colors.type })
    vim.api.nvim_set_hl(0, "NeoTreeGitDirty", { fg = colors.func })
    vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = colors.keyword })
    vim.api.nvim_set_hl(0, "NeoTreeGitIgnored", { fg = colors.fg_dark })
end

return M
