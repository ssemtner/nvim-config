local fterm = require('FTerm')

-- fterm.setup({
--     border = 'double',
--     dimesions = {
--         height = 0.8,
--         width = 0.8,
--     },
--     cmd = 'bash',
-- }

vim.keymap.set('n', '<A-t>', function()
    fterm.toggle()
end)

vim.keymap.set('t', '<A-t>', function()
    fterm.toggle()
end)
