return {
  "moyiz/blink-emoji.nvim",
  lazy = true,
  specs = {
    {
      "Saghen/blink.cmp",
      optional = true,
      opts = {
        sources = {
          -- enable the provider by default (automatically extends when merging tables)
          default = { "emoji" },
          providers = {
            -- Specific details depend on the blink source
            emoji = {
              name = "Emoji",
              module = "blink-emoji",
              min_keyword_length = 1,
              score_offset = -1,
            },
          },
        },
        keymap = {
          ["<Tab>"] = {
            "snippet_forward",
            function()
              if vim.g.ai_accept then return vim.g.ai_accept() end
            end,
            "fallback",
          },
          ["<C-D>"] = { "show", "show_documentation", "hide_documentation" },
          ["<S-K>"] = { "scroll_documentation_up", "fallback" },
          ["<S-J>"] = { "scroll_documentation_down", "fallback" },
        },
        cmdline = {
          completion = { ghost_text = { enabled = false } },
          keymap = {
            ["<C-J>"] = { "select_next", "fallback" },
            ["<C-K>"] = { "select_prev", "fallback" },
          },
        },
        completion = {
          list = { selection = { preselect = true, auto_insert = false } },
          menu = {
            auto_show = true, -- 自动显示补全菜单
          },
          trigger = {
            show_on_insert_on_trigger_character = false,
          },
          accept = {
            auto_brackets = {
              enabled = false,
            },
          },
        },
      },
    },
  },
}
