-- Załaduj i zastosuj schemat kolorów
local ok, theme = pcall(require, "guttenbergovitz")
if not ok then
    vim.notify(
        "guttenbergovitz.nvim: nie można załadować schematu kolorów",
        vim.log.levels.ERROR
    )
    return
end

theme.setup()