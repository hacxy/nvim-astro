return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<C-_>"] = { '<Cmd>execute v:count . "ToggleTerm"<CR>', desc = "Toggle terminal" },

          -- 上一个和下一个Buffer 切换快捷键
          ["<S-h>"] = {
            function() require("astrocore.buffer").nav(-vim.v.count1) end,
            desc = "Previous buffer",
          },
          ["<S-l>"] = {
            function() require("astrocore.buffer").nav(vim.v.count1) end,
            desc = "Next buffer",
          },

          ["<C-S>"] = { "<Cmd>silent! update! | redraw<CR>", desc = "Force write" },
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          -- ["<leader>c"] = false,
        },
        t = {
          ["<C-_>"] = { "<Cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
          ["<Esc><Esc>"] = { [[<C-\><C-n>]] },
        },
        i = {
          ["<C-_>"] = { "<Esc><Cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
          ["<C-S>"] = { "<Esc><Cmd>silent! update! | redraw<CR>", desc = "Force write" },
        },
        x = {
          -- ["<Leader>l"] = false,
          -- ["<leader>c"] = false,
          ["<C-S>"] = { "<Esc><Cmd>silent! update! | redraw<CR>", desc = "Force write" },
        },
        v = {
          -- ["<leader>c"] = false,
        },

        -- keymap.set("n", "ma", '<cmd>lua require("telescope").extensions.vim_bookmarks.all()<cr>')
        -- keymap.set("n", "mc", '<cmd>lua require("telescope").extensions.vim_bookmarks.current_file()<cr>')
      },
    },
  },
}
