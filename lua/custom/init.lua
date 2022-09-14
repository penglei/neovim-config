-- init中配置全局选项，不会配置plugin的选项
-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local opt = vim.opt
local g = vim.g

opt.title = false
opt.timeoutlen = 1200
g.mapleader = ","
