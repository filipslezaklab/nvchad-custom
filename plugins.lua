local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "rust-lang/rust.vim",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },

  {
    "simrat39/rust-tools.nvim",
    ft = { "rust" },
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      local opts = require "custom.configs.rtools"
      return opts
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
      vim.g.rustfmt_autosave = 1
    end,
  },

  -- DEBUG cia nvim-DAP

  {
    "mfussenegger/nvim-dap",
  },

  {
    "saecki/crates.nvim",
    ft = { "rust", "toml" },
    dependencies = "hrsh7th/nvim-cmp",
    config = function(_, opts)
      local crates = require "crates"
      crates.setup(opts)
      crates.show()
    end,
  },

  -- override nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local M = require "plugins.configs.cmp"
      table.insert(M.sources, { name = "crates" })
      return M
    end,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- emmet
  {
    "mattn/emmet-vim",
    lazy = false,
    enabled = true,
  },

  -- highlights for github actions
  {
    "yasuhiroki/github-actions-yaml.vim",
    ft = { "yml", "yaml" },
    enabled = true,
    lazy = false,
  },

  -- spectre for better search and replace operations
  {
    "nvim-pack/nvim-spectre",
    enabled = true,
    lazy = false,
  },

  {
    "ibhagwan/fzf-lua",
    enabled = true,
    lazy = false,
  },

  {
    "ThePrimeagen/harpoon",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      local harpoon = require "harpoon"
      harpoon.setup()
    end,
    enabled = true,
    lazy = false,
  },

  {
    "NvChad/nvterm",
    enabled = false,
  },

  {
    "gpanders/editorconfig.nvim",
    enabled = true,
    lazy = false,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },
}

return plugins
