--[[
    Lualine integration for Guttenbergovitz theme
    Provides custom highlighting for status line
--]]

local M = {}

function M.setup()
    local colors = require("guttenbergovitz.colors").get()
    
    return {
        normal = {
            a = { fg = colors.bg_dark, bg = colors.red, bold = true },
            b = { fg = colors.fg, bg = colors.bg_dark },
            c = { fg = colors.fg_dark, bg = colors.bg_dark }
        },
        insert = {
            a = { fg = colors.bg_dark, bg = colors.green, bold = true },
        },
        visual = {
            a = { fg = colors.bg_dark, bg = colors.orange, bold = true },
        },
        replace = {
            a = { fg = colors.bg_dark, bg = colors.red, bold = true },
        },
        inactive = {
            a = { fg = colors.fg_dark, bg = colors.bg_dark },
            b = { fg = colors.fg_dark, bg = colors.bg_dark },
            c = { fg = colors.fg_dark, bg = colors.bg_dark }
        }
    }
end

return M 