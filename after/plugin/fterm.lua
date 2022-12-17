local fterm = require('FTerm')

vim.keymap.set('n', '<A-t>', function()
    fterm.toggle()
end)

vim.keymap.set('t', '<A-t>', function()
    fterm.toggle()
end)
