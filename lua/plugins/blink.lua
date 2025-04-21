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
            show_on_keyword = true, -- 根据关键字触发
            show_on_insert_on_trigger_character = false, -- 在进入插入模式和特定字符触发
            show_on_trigger_character = false,
            -- show_on_accept_on_trigger_character = false,
          },
        },
      },
    },
  },
}
