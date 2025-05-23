---@type LazySpec
return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      local get_icon = require("astroui").get_icon

      opts.dashboard = {
        preset = {
          keys = {
            {
              action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
              desc = "Config",
              icon = " ",
              key = "c",
            },
            { key = "n", action = "<Leader>n", icon = get_icon("FileNew", 0, true), desc = "New File  " },
            { key = "f", action = "<Leader>ff", icon = get_icon("Search", 0, true), desc = "Find File  " },
            { key = "o", action = "<Leader>fo", icon = get_icon("DefaultFile", 0, true), desc = "Recents  " },
            { key = "w", action = "<Leader>fw", icon = get_icon("WordFile", 0, true), desc = "Find Word  " },
            { key = "s", action = "<Leader>Sl", icon = get_icon("Refresh", 0, true), desc = "Last Session  " },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          },
          header = table.concat({
            "███    ██ ██    ██ ██ ███    ███",
            "████   ██ ██    ██ ██ ████  ████",
            "██ ██  ██ ██    ██ ██ ██ ████ ██",
            "██  ██ ██  ██  ██  ██ ██  ██  ██",
            "██   ████   ████   ██ ██      ██",
          }, "\n"),
        },
      }
    end,
  },
}
