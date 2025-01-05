--[[
    Guttenbergovitz Theme for Neovim
    A minimalist theme inspired by jazz and traditional printing aesthetics
    
    Author: Guttenbergovitz
    License: MIT
    Version: 1.0.0
--]]

local M = {}
local config = require("guttenbergovitz.config")

---Load plugin-specific highlighting if enabled in config
function M.load_plugin_support()
    local plugins = config.options.plugins
    
    -- Git integration
    if plugins.gitsigns then
        require("guttenbergovitz.plugins.gitsigns").setup()
    end
    
    -- File navigation
    if plugins.nvim_tree then
        require("guttenbergovitz.plugins.nvim_tree").setup()
    end
    
    -- Status line
    if plugins.lualine then
        require("guttenbergovitz.plugins.lualine").setup()
    end
    
    -- Buffer line
    if plugins.bufferline then
        require("guttenbergovitz.plugins.bufferline").setup()
    end
    
    -- Indentation guides
    if plugins.indent_blankline then
        require("guttenbergovitz.plugins.indent_blankline").setup()
    end
end

---Main setup function for the colorscheme
---@param opts table|nil Configuration options to override defaults
function M.setup(opts)
    -- Initialize configuration with user options
    config.setup(opts)
    
    -- Verify Neovim version compatibility
    if vim.version().minor < 9 then
        vim.notify(
            "guttenbergovitz.nvim: Neovim >= 0.9 is required",
            vim.log.levels.ERROR
        )
        return
    end
    
    -- Initialize and apply the color palette
    local colors = require("guttenbergovitz.colors")
    colors.setup()
    
    -- Load plugin integrations based on user configuration
    M.load_plugin_support()
end

return M 