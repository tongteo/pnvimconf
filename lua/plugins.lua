vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use {'nvim-treesitter/nvim-treesitter'}
  use {'voldikss/vim-floaterm'}
  use {'numToStr/Comment.nvim'}
  use {"windwp/nvim-autopairs"}
  use{
    "kylechui/nvim-surround",
    tag = "*",
}
-- using packer.nvim
  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  use "nvim-lua/plenary.nvim"
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
  use {
		"Exafunction/codeium.vim",
		commit = "a1c3d6b369a18514d656dac149de807becacbdf7",
	}
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
