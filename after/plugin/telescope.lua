local builtin = require('telescope.builtin')
require("telescope").load_extension "file_browser"
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n','<C-p>',builtin.git_files,{})
vim.keymap.set('n', '<C-b>', builtin.buffers, {})
vim.keymap.set("n", "<C-f>", ":Telescope file_browser<CR>", { noremap = true })

vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({search = vim.fn.input("Grep > ")})
end)
