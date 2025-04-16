return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<C-_>"] = { '<Cmd>execute v:count . "ToggleTerm"<CR>', desc = "Toggle terminal" },

          -- 上一个和下一个Buffer 切换快捷键
          ["<S-l>"] = { "<cmd>bn<cr>", desc = "Next buffer" },
          ["<S-h>"] = { "<cmd>bp<cr>", desc = "Previous buffer" },
        },
        t = {
          ["<C-_>"] = { "<Cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
        },
        i = {
          ["<C-_>"] = { "<Esc><Cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
        },
      },
    },
  },
}
