---@type MappingsTable
local M = {}

M.general = {
  plugin = false,
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
  },
}

M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function()
        require("crates").upgrade_all_crates()
      end,
      "Update crates",
    },
  },
}

M.spectre = {
  plugin = true,
  n = {
    ["<leader>S"] = {
      function()
        require("spectre").open()
      end,
      "Open Spectre",
    },
    ["<leader>sp"] = {
      function()
        require("spectre").open_file_search { select_word = true }
      end,
      "Search on current file",
    },
  },
}

M.fzf = {
  plugin = true,
  n = {
    ["<leader>gp"] = {
      function()
        require("fzf-lua").grep_project()
      end,
      "Grep project lines",
    },
  },
}

M.rustTools = {
  plugin = true,
  n = {
    ["<leader>K"] = {
      function()
        local rt = require "rust-tools"
        rt.hover_actions.hover_actions()
      end,
      "Hover actions",
    },
    ["<leader>ac"] = {
      function()
        local rt = require "rust-tools"
        rt.code_action_group.code_action_group()
      end,
      "Code actions",
    },
    ["<leader>md"] = {
      function()
        local rt = require "rust-tools"
        rt.move_item.move_item(false)
      end,
      "Move item down",
    },
    ["<leader>mu"] = {
      function()
        local rt = require "rust-tools"
        rt.move_item.move_item(true)
      end,
      "Move item up",
    },
  },
}

M.harpoon = {
  plugin = true,
  n = {
    ["<leader>h"] = {
      function()
        local ui = require "harpoon.ui"
        ui.toggle_quick_menu()
      end,
    },
    ["<leader>hj"] = {
      function()
        local ui = require "harpoon.ui"
        ui.nav_next()
      end,
    },
    ["<leader>hk"] = {
      function()
        local ui = require "harpoon.ui"
        ui.nav_perv()
      end,
    },
  },
}

return M
