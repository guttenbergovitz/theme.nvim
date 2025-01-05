-- Load and apply the color scheme
local ok, theme = pcall(require, "guttenbergovitz")
if not ok then
    vim.notify(
        "guttenbergovitz.nvim: unable to load color scheme",
        vim.log.levels.ERROR
    )
    return
end

theme.setup()