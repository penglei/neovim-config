local overrides = require "custom.plugins.overrides"

return {
  -- ['LnL7/vim-nix'] = {}  -- replace by treesitter

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  }

  -- ["NvChad/ui"] = {
  --   override_options = {
  --     tabufline = {
  --       lazyload = false, -- to show tabufline by default
  --     }
  --   }
  -- }
}
