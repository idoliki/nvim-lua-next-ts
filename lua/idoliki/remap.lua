vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "Q", "<getouttahere>")
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<C-1>", "<C-W>j")
vim.keymap.set("n", "<C-2>", "<C-W>k")
vim.keymap.set("n", "<C-3>", "<C-W>h")
vim.keymap.set("n", "<C-4>", "<C-W>l")

-- nvim-tree
vim.keymap.set("n", "<leader>t", ":NvimTreeFocus<CR>")


vim.keymap.set("n", "<leader>y", "+y") -- copy to the system clipboard

vim.keymap.set("n", "/", "/\\c")

vim.api.nvim_set_option("clipboard","unnamed") 
-- nnoremap <leader>p "+p
-- nnoremap <leader>P "+P
-- vnoremap <leader>p "+p
-- vnoremap <leader>P "+P
