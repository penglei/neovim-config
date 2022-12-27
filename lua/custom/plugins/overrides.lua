local M = {}

M.alpha = {
  header = {
    val = {
     "   ___               ___  ",
     "  (0 0)             (o o) ",
     " (  V  )  ⊢γ ⇔ ⊨γ  (  V  )",
     " --m-m---------------m-m--",
     "                          ",
     unpack((function()
        local blackLine = "                          "
        local dirname   = "⟶ " .. vim.fn.getcwd():match("^.+/(.+)$") .. " ⟵"
        local dirnameLen = (string.len(dirname)-4)
        if string.len(blackLine) > dirnameLen then
          dirname = string.rep(" ", math.ceil((string.len(blackLine) - dirnameLen) / 2)) .. dirname
        end
        return {blackLine, dirname}
     end)()),
    },
  },
}

M.nvterm =  {
  terminals = {
    type_opts = {
      float = {
        relative = "editor",
        row = 0.2,
        col = 0.15,
        width = 0.8,
        height = 0.6,
        border = "single",
      },
    }
  }
}

-- https://github.com/nvim-treesitter/nvim-treesitter
M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "c",
    "cpp",
    "nix",
    "elvish",
    "go",
    "gomod",
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
