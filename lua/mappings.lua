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
vim.keymap.set("n", "<leader>n", ":NvimTreeToggle<cr>")

--Nvimtree focus
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<cr>")
--close current buffer
vim.keymap.set("n", "<leader>x", ":bdelete<cr>")
--quick save and quit 
vim.keymap.set("n", "<leader>w", ":w<cr>")
vim.keymap.set("n", "<leader>q", ":wq<cr>")


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
