--HopChar1 on entire file  
vim.keymap.set("n", "f", "<cmd>HopChar1<cr>")
--"jk" back to normal mode  
vim.keymap.set("i", "jk", "<esc>")
-- tab to next buffer
vim.keymap.set("n", "<tab>", ":bnext<cr>",{ silent = true })
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
--Nvimtree toggle silent
vim.keymap.set("n", "<leader>n", ":NvimTreeToggle<cr>", { silent = true })


--Nvimtree focus
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<cr>", { silent = true })
--close current buffer
vim.keymap.set("n", "<leader>x", ":bdelete<cr>", {silent = true })
--quick save and quit 
vim.keymap.set("n", "<leader>w", ":w<cr>",{ silent = true })
vim.keymap.set("n", "<leader>q", ":wq<cr>")

--telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'zz', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

--floatterm
vim.keymap.set("n", "<leader>t", ":FloatermToggle<cr>", { silent = true })
vim.keymap.set("t", "<esc>", "<C-\\><C-n>:FloatermToggle<cr>", { silent = true })
