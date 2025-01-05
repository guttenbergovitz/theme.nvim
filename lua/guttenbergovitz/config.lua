local M = {}

M.defaults = {
    transparent_background = false,
    dim_inactive = false,
    term_colors = true,
    styles = {
        comments = { italic = true },
        keywords = { bold = true },
        functions = {},
        variables = {},
        strings = { italic = true },
    },
    plugins = {
        gitsigns = true,
        indent_blankline = true,
        nvim_tree = true,
        lualine = true,
        bufferline = true,
    }
}

M.options = {}

function M.setup(opts)
    M.options = vim.tbl_deep_extend("force", {}, M.defaults, opts or {})
end

return M 