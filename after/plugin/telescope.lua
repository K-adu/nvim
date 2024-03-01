local builtin = require('telescope.builtin')
require("telescope").load_extension "file_browser"


vim.keymap.set('n', '?', ":Telescope current_buffer_fuzzy_find sorting_strategy=ascending<CR>", {})
vim.keymap.set('n', '<C-l>',
	":Telescope find_files find_command=fdfind,--no-ignore-vcs,--hidden prompt_prefix=🔍<CR>",
	{})


vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n','<C-p>',builtin.git_files,{})
vim.keymap.set('n', '<C-b>', builtin.buffers, {})
vim.keymap.set("n", "<C-f>", ":Telescope file_browser<CR>", { noremap = true })
vim.keymap.set("n", "<C-g>", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>tc', builtin.commands, {})
