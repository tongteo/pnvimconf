local opt = vim.opt
--leader key
vim.g.mapleader = " "

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

opt.number=true
opt.relativenumber=true
opt.cursorline=true
opt.expandtab=true
opt.smartindent=true
opt.tabstop=2
opt.shiftwidth=2
opt.softtabstop=2
opt.clipboard="unnamedplus"

require("bufferline").setup{}

--DAP
local dap = require("dap")
dap.adapters.gdb = {
  type = "executable",
  command = "gdb",
  args = { "-i", "dap" }
}
dap.configurations.cpp = {                        {                                           name = "Launch",
    type = "gdb",                                   request = "launch",                             program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,                                            cwd = "${workspaceFolder}",
  },
}
--DAP UI
require("dapui").setup()
