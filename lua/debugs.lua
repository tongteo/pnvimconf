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

dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = '/root/codelldb-aarch64-linux/extension/adapter/codelldb',
    args = {"--port", "${port}"},

    -- On windows you may have to uncomment this:
    -- detached = false,
  }
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}

--[[
--keymap dap-ui
vim.keymap.set("n", "gu", ":lua require'dapui'.toggle()<cr>")
--DAP keymap
vim.keymap.set("n", "gb", ":lua require'dap'.toggle_breakpoint()<cr>")
vim.keymap.set("n", "gc", ":lua require'dap'.continue()<cr>")
vim.keymap.set("n", "gi", ":lua require'dap'.step_into()<cr>")
vim.keymap.set("n", "go", ":lua require'dap'.step_over()<cr>")

]]
