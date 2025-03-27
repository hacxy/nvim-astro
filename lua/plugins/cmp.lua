return { -- override nvim-cmp plugin
  "hrsh7th/nvim-cmp",
  -- override the options table that is used in the `require("cmp").setup()` call
  opts = function(_, opts)
    -- opts parameter is the default options table
    -- the function is lazy loaded so cmp is able to be required
    local cmp = require "cmp"
    opts.mapping["<C-d>"] = cmp.mapping.complete() -- 手动触发建议
    opts.mapping["<CR>"] = cmp.mapping.confirm { select = true }
    opts.completion = { completeopt = "menu,menuone,noinsert" } -- 始终默认选择第一个
  end,
}
