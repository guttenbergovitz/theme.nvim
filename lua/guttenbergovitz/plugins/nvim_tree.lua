--[[
    Nvim-tree integration for Guttenbergovitz theme
    Provides custom highlighting for file explorer
--]]

local M = {}

function M.setup()
    local colors = require("guttenbergovitz.colors").get()
    
    -- Basic elements
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { fg = colors.fg, bg = colors.bg_dark })
    vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { fg = colors.bg_dark, bg = colors.bg_dark })
    vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { fg = colors.bg_dark })
    
    -- Files and folders
    vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = colors.fg })
    vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = colors.fg })
    vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderName", { fg = colors.fg_dark })
    vim.api.nvim_set_hl(0, "NvimTreeFileIcon", { fg = colors.fg_dark })
    vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = colors.fg })
    
    -- Special files
    vim.api.nvim_set_hl(0, "NvimTreeSpecialFile", { fg = colors.type })
    vim.api.nvim_set_hl(0, "NvimTreeSymlink", { fg = colors.type })
    
    -- Git integration - using warmer colors
    vim.api.nvim_set_hl(0, "NvimTreeGitNew", { fg = colors.type })
    vim.api.nvim_set_hl(0, "NvimTreeGitDirty", { fg = colors.func })
    vim.api.nvim_set_hl(0, "NvimTreeGitDeleted", { fg = colors.keyword })
    vim.api.nvim_set_hl(0, "NvimTreeGitIgnored", { fg = colors.fg_dark })
end

return M