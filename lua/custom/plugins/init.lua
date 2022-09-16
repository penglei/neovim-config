local overrides = require "custom.plugins.overrides"

return {
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  ["goolord/alpha-nvim"] = {
    disable = false,
    override_options = overrides.alpha,
  },

  ["folke/which-key.nvim"] = {
    disable = false,
    keys = {"<leader>", ":"},
  },

  ["NvChad/ui"] = {
    override_options = {
      tabufline = {
        lazyload = false, -- to show tabufline by default
      }
    }
  }

  -- ['LnL7/vim-nix'] = {}  -- replaced by treesitter
}
