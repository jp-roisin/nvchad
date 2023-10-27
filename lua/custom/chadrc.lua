---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "one_light",
  theme_toggle = { "one_light", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

-- Relative line numbers
vim.opt.relativenumber = true
-- Wrap lines
vim.opt.wrap = false
-- scrolloff = 8
vim.opt.scrolloff = 8

return M
