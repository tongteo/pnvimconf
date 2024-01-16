vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
-- using packer.nvim
use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- You can alias plugin names
  use 'Exafunction/codeium.vim'
  use {
  'phaazon/hop.nvim',
  branch = 'v2', -- optional but strongly recommended
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
  end
}
  use { "catppuccin/nvim", as = "catppuccin" }
end)
