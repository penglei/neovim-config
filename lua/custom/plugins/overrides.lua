local M = {}

M.alpha = {
  header = {
    val = {
      "        ___               ___  ",
     "       (0 0)             (o o) ",
    "      (  V  )  ⊢γ ⇔ ⊨γ  (  V  ) ",
    "      --m-m---------------m-m--",
    "                                  ",
    },
  },
}
M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "c",
    "nix",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    -- "css-lsp",
    -- "html-lsp",
    -- "deno",
  },
}

-- git support in nvimtree
M.nvimtree = {
  view = {
    adaptive_size = false,
    side = "left",
    width = 40,
    hide_root_folder = false,
  },

  actions = {
    open_file = {
      resize_window = false,
    },
  },

  git = {
    enable = true,
    ignore = false,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
