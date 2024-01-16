--HopChar1 on entire file  
vim.keymap.set("n", "f", "<cmd>HopChar1<cr>")
--"jk" back to normal mode  
vim.keymap.set("i", "jk", "<esc>")
-- tab to next buffer
vim.keymap.set("n", "<tab>", ":bnext<cr>")
-- empty setup using defaults
--require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 18,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
--Nvimtree toggle
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")

--Nvimtree focus
vim.keymap.set("n", "<leader>f", ":NvimTreeFocus<cr>")
--close current buffer
vim.keymap.set("n", "<leader>x", ":bdelete<cr>")
--quick save and quit 
vim.keymap.set("n", "<leader>w", ":w<cr>")
vim.keymap.set("n", "<leader>w", ":wq<cr>")
