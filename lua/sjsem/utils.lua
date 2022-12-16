vim.keymap.set('n', '<leader>th', function()
    -- get current file path (relative to working directory)
    local file = vim.fn.expand('%:p')

    -- if the file ends in .cpp
    if file:match('%.cpp$') then
        -- switch to the header file (.h)
        vim.cmd('e ' .. file:gsub('%.cpp$', '.h'))
    end

    if file:match('%.h$') then
        vim.cmd('e ' .. file:gsub('%.h$', '.cpp'))
    end
end)
