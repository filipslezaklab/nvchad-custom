local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "scss",
    "yaml",
    "json",
    "json5",
    "toml",
    "javascript",
    "jsdoc",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "rust",
    "git_rebase",
    "git_config",
    "go",
    "gitignore",
    "gitcommit",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "luaformatter",
    "stylua",
    "rust-analyzer",
    -- web dev stuff
    "json-lsp",
    "jsonlint",
    "fixjson",
    "yamlfmt",
    "yamllint",
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "prettierd",
    "eslint-lsp",
    "eslint_d",
    "xo",
    "rustfmt",
    "sqlfmt",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
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
