return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<C-_>"] = { '<Cmd>execute v:count . "ToggleTerm"<CR>', desc = "Toggle terminal" },
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
