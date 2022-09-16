local overrides = require "custom.plugins.overrides"

return {
  ["goolord/alpha-nvim"] = {
    disable = false,
    override_options = overrides.alpha,
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
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
  },

  ["NvChad/nvterm"] = {
    override_options = overrides.nvterm,
  },

  -- Override plugin definition options --
  ----------------------------------------

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
      -- lspconfig.gopls.setup {
      --   cmd = {"gopls", "serve"},
      --   filetypes = {"go", "gomod"},
      --   root_dir = require("lspconfig/util").root_pattern("go.work", "go.mod", ".git"),
      --   settings = {
      --     gopls = {
      --       analyses = {
      --         unusedparams = true,
      --       },
      --       staticcheck = true,
      --     },
      --   },
      -- }
    end,
  },

  -- Install a plugin
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["ray-x/guihua.lua"] = {},
  ["ray-x/go.nvim"] = {
    config = function()
      require('go').setup({
        comment_placeholder = '   ',
      })
    end
  }

  -- ['LnL7/vim-nix'] = {}  -- replaced by treesitter
}
