return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        never_show = {
          ".git",
        },
        always_show = { -- remains visible even if other settings would normally hide it
          ".vitepress",
          ".env",
          ".env.*",
          ".stylua.toml",
        },
      },
    },
    event_handlers = {
      {
        event = "file_opened",
        handler = function()
          -- auto close
          -- vimc.cmd("Neotree close")
          -- OR
          require("neo-tree.command").execute { action = "close" }
        end,
      },
    },
  },
}
