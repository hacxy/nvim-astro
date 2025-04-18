-- return { -- override blink.cmp plugin
--   "Saghen/blink.cmp",
--   opts = {
--   },
-- }

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
          ["<Tab>"] = { "snippet_forward", "fallback" },
          ["<C-D>"] = { "show", "show_documentation", "hide_documentation" },
          ["<S-K>"] = { "scroll_documentation_up", "fallback" },
          ["<S-J>"] = { "scroll_documentation_down", "fallback" },
        },

        completion = {
          list = { selection = { preselect = true, auto_insert = false } },
        },
      },
    },
  },
}
