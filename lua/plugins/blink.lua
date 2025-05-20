return {
  "moyiz/blink-emoji.nvim",
  lazy = true,
  specs = {
    {
      "Saghen/blink.cmp",
      optional = true,
      opts = {
        signature = {
          enabled = true,
        },
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
          ["<C-P>"] = { "scroll_documentation_up", "fallback" },
          ["<C-N>"] = { "scroll_documentation_down", "fallback" },
        },
        cmdline = {
          completion = { ghost_text = { enabled = false } },
          keymap = {
            ["<C-J>"] = { "select_next", "fallback" },
            ["<C-K>"] = { "select_prev", "fallback" },
            ["<C-F>"] = { "show_signature", "hide_signature", "fallback" },
          },
        },
        completion = {
          list = { selection = { preselect = true, auto_insert = false } },
          menu = {
            auto_show = true,
          },
          trigger = {
            show_on_keyword = true,
            show_on_trigger_character = false,
            show_on_insert_on_trigger_character = false,
          },
          accept = {
            auto_brackets = {
              enabled = false,
            },
          },

          documentation = {
            auto_show = true,
          },
        },
      },
    },
  },
}
