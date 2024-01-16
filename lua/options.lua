-- Short reference to vim.opt
local opt = vim.opt

-- Leader key configuration
vim.g.mapleader = " "

-- Disable netrw at the very start
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Enable termguicolors for better color support
opt.termguicolors = true

-- Editor behavior settings
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.expandtab = true
opt.smartindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.clipboard = "unnamedplus"

-- Set color scheme if available
local ok, _ = pcall(vim.cmd, "colorscheme catppuccin")
if not ok then
  vim.notify("Color scheme 'catppuccin' not found!", vim.log.levels.ERROR)
end

-- Bufferline setup
require("bufferline").setup{}

-- DAP (Debug Adapter Protocol) Configuration
local dap = require("dap")
dap.adapters.gdb = {
  type = "executable",
  command = "gdb",
  args = {"-i", "dap"}
}

dap.configurations.cpp = {
  {
    name = "Launch",
    type = "gdb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = "${workspaceFolder}"
  }
}

-- DAP UI Setup
require("dapui").setup()
