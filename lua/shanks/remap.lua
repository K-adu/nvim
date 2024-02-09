vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>nt", ':NvimTreeToggle<CR>', {
    noremap = true
})



vim.keymap.set("v", "<leader>y", "\"+y") -- copy to global clipboard
vim.keymap.set("n", "<leader>y", "\"+y") -- copy to global clipboard
vim.keymap.set({ "n", "v" }, "<leader>pp", "\"+p")
